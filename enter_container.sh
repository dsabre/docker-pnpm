#!/bin/bash

if [ -f .env ]; then
    	set -a
	source .env

	CONTAINER_NAME=${CONTAINER_NAME:-app}
else
	CONTAINER_NAME="app"
fi

docker exec -it $CONTAINER_NAME sh -l
