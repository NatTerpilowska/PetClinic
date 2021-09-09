#!bin/bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az login --identity 
az aks get-credentials --resource-group project-rG --name project-aks

kubectl apply -f k8s