#!/bin/bash
set -e

docker pull node:lts

cd /home/beCycled/beCycled-frontend
git fetch --all
git checkout main
git pull --all

docker build -t becycled-frontend .
