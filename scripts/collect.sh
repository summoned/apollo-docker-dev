configservicezip=apollo-configservice-1.4.0-SNAPSHOT-github.zip
adminservicezip=apollo-adminservice-1.4.0-SNAPSHOT-github.zip
portalzip=apollo-portal-1.4.0-SNAPSHOT-github.zip

mkdir dockerworkplace
mkdir dockerworkplace/apollo-configservice
mkdir dockerworkplace/apollo-adminservice
mkdir dockerworkplace/apollo-portal
cp ../apollo-configservice/target/$configservicezip dockerworkplace/apollo-configservice/$configservicezip
cp ../apollo-configservice/src/main/docker/Dockerfile dockerworkplace/apollo-configservice/Dockerfile

cp ../apollo-adminservice/target/$adminservicezip dockerworkplace/apollo-adminservice/$adminservicezip
cp ../apollo-adminservice/src/main/docker/Dockerfile dockerworkplace/apollo-adminservice/Dockerfile

cp ../apollo-portal/target/$portalzip dockerworkplace/apollo-portal/$portalzip
cp ../apollo-portal/src/main/docker/Dockerfile dockerworkplace/apollo-portal/Dockerfile