configservicezip=apollo-configservice-1.4.0-SNAPSHOT-github.zip
adminservicezip=apollo-adminservice-1.4.0-SNAPSHOT-github.zip
portalzip=apollo-portal-1.4.0-SNAPSHOT-github.zip

mkdir -p dockerworkplace
mkdir -p dockerworkplace/apollo-configservice
mkdir -p dockerworkplace/apollo-adminservice
mkdir -p dockerworkplace/apollo-portal
cp -f ../apollo-configservice/target/$configservicezip dockerworkplace/apollo-configservice/$configservicezip
cp -f ../apollo-configservice/src/main/docker/Dockerfile dockerworkplace/apollo-configservice/Dockerfile

cp -f ../apollo-adminservice/target/$adminservicezip dockerworkplace/apollo-adminservice/$adminservicezip
cp -f ../apollo-adminservice/src/main/docker/Dockerfile dockerworkplace/apollo-adminservice/Dockerfile

cp -f ../apollo-portal/target/$portalzip dockerworkplace/apollo-portal/$portalzip
cp -f ../apollo-portal/src/main/docker/Dockerfile dockerworkplace/apollo-portal/Dockerfile