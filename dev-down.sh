#!/bin/sh
echo "going down"
export CONTAINER_NAME_PREFIX="dribly-sensor"
export HOST_HTTP_PORT=3001
export HOST_HTTPS_PORT=3401
export PHP_FPM_PORT=9001
export COMPOSE_PROJECT_NAME="dribly-sensor"
cd laradock
docker-compose --project-name="dribly-sensor" down --rmi all
echo "All done downin. Hope it worked"
