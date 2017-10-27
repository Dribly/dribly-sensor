#!/bin/sh
export CONTAINER_NAME_PREFIX="dribly-sensor"
export HOST_HTTP_PORT=3001
export HOST_HTTPS_PORT=3401
export PHP_FPM_PORT=9001
export COMPOSE_PROJECT_NAME="dribly-sensor"
echo "Building $CONTAINER_NAME_PREFIX, HTTP $HOST_HTTP_PORT -> PHP $PHP_FPM_PORT"
cd laradock
docker-compose --project-name="dribly-sensor" up -d nginx 
echo "All done. Hope it worked"
