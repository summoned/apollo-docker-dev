docker pull mysql:5.7
docker stop mysql-service
docker rm mysql-service
docker run --name mysql-service -v /Users/didi/mysql:/var/lib/mysql -v /Users/didi/apollo_mysql_scripts:/opt/mysql/scripts -e MYSQL_ROOT_PASSWORD=kuxopZpfq6:X --expose 3306 -d mysql:5.7

docker stop apollo-configservice
docker build -t apollo-configservice ./dockerworkplace/apollo-configservice
docker stop apollo-configservice
docker rm apollo-configservice
docker run --name apollo-configservice -p 8080:8080 -v /opt/logs/configservice:/opt/logs --link mysql-service -d apollo-configservice

docker build -t apollo-adminservice ./dockerworkplace/apollo-adminservice
docker stop apollo-adminservice
docker rm apollo-adminservice
docker run --name apollo-adminservice --rm -v /opt/logs/adminservice:/opt/logs -e eureka.service.url=http://apollo-configservice:8080/eureka/ --link mysql-service --link=apollo-configservice -d apollo-adminservice

docker build -t apollo-portal ./dockerworkplace/apollo-portal
docker stop apollo-portal
docker rm apollo-portal
docker run --name apollo-portal -p 8070:8070 -v /opt/logs/portal:/opt/logs --link mysql-service --link apollo-configservice -d apollo-portal
