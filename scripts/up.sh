#!/bin/sh
docker compose -p issuer -f ./infrastructure/local/docker-compose-infra.yml up -d redis postgres vault
