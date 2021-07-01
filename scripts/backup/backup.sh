#!/bin/bash

set -e

now=$(date +"%Y-%m-%d_%H-%M")

echo "Running backup at $now"

docker exec -t becycled-postgresql pg_dump -Fc -Z1 -U becycled becycled > /home/beCycled/dump/becycled_$now.dmp

find /home/beCycled/dump/*.dmp -mtime +7 -type f -delete
