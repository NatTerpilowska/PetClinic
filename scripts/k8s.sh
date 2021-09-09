#!bin/bash
# Front-end
kubectl apply -f spring-petclinc-angular.yaml
# Backend 
kubectl apply -f spring-petclinc-rest.yaml