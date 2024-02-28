#!/bin/bash

# Find the container ID(s) running on port 5000
CONTAINER_IDS=$(/usr/local/bin/docker ps -q --filter "publish=5000/tcp")

# Check if any container is running on port 5000
if [ -z "$CONTAINER_IDS" ]; then
    echo "No container is running on port 5000."
else
    # Loop through each container ID to stop and remove it
    for CONTAINER_ID in $CONTAINER_IDS; do
        /usr/local/bin/docker system prune -a >/dev/null
        echo "Container $CONTAINER_ID running on port 5000 has been stopped and removed."
    done
fi

