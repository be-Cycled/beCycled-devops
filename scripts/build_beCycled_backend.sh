#!/bin/bash
set -e

docker pull quay.io/testcontainers/ryuk:0.2.3

cd /home/beCycled/beCycled-backend
git fetch --all
git checkout release
git pull --all
./gradlew bootJar

docker build -t becycled-backend .
