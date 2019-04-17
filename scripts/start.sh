sh build.sh
sh collect.sh

docker build -t apollo-configservice ./dockerworkplace/apollo-configservice
docker build -t apollo-adminservice ./dockerworkplace/apollo-adminservice
docker build -t apollo-portal ./dockerworkplace/apollo-portal

docker-compose up -d