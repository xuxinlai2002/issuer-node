#!/bin/sh

echo "1.upload soruce code ..."
docker cp internal issuer-api-1:/root/issuer-node/
mv pkg/credentials ./
docker cp pkg/ issuer-api-1:/root/issuer-node/
mv ./credentials pkg/

echo "2.run make build-local"
docker exec -i -u root issuer-api-1 /bin/bash < scripts/make.sh

echo "3.restart container issuer-api-1"
docker restart issuer-api-1