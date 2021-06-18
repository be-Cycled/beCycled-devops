#!/bin/bash
set -e

docker pull quay.io/testcontainers/ryuk:0.2.3

cd /home/beCycled/beCycled-iot-hub
git fetch --all
git checkout main
git pull --all
./gradlew shadowJar

docker build -t becycled-iot-hub .
