#!/bin/bash
set -e
docker-compose --build --parallel && \
docker login -u ${DOCKERHUB_CREDENTIALS_USR} -p ${DOCKERHUB_CREDENTIALS_PSW}
docker-compose push
