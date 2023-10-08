#!/bin/sh

docker compose -p issuer -f ./infrastructure/local/docker-compose.yml up -d api pending_publisher
