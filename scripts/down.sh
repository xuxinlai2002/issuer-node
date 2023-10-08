#!/bin/sh

docker compose -p issuer -f ./infrastructure/local/docker-compose-infra.yml down --remove-orphans
docker compose -p issuer -f ./infrastructure/local/docker-compose.yml down --remove-orphans