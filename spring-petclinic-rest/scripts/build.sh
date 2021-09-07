#!/bin/bash

set -e

# docker run -d -p 80:8080 --name petclinicfront spring-petclinic-angular:latest 
# docker run -d -p 9966:9966 --name petclinicback springcommunity/spring-petclinic-rest

docker-compose build --parallel && \

#docker login -u ${DOCKERHUB_CREDENTIALS_USR} -p ${DOCKERHUB_CREDENTIALS_PSW}
docker-compose push
