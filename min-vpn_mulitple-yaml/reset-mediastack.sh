#!/bin/bash
# reset-mediastack.sh
# Stop and remove all containers, networks, and volumes for all YAML files in min-vpn_mulitple-yaml, then redeploy

set -e

for f in docker-compose-*.yaml; do
  docker compose -f "$f" --env-file docker-compose.env down -v || true
done

./deploy-mediastack.sh
