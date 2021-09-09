#!bin/bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az login --identity
az aks get-credentials --resource-group Project --name petclinic-cluster
# Front-end
kubectl apply -f spring-petclinc-angular.yaml
# Backend 
kubectl apply -f spring-petclinc-rest.yaml