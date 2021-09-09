terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 2.46.0"
        }
    }
}

provider "azurerm" {
    features {}
}
resource "azurerm_resource_group" "main" {
    name = "${var.project_name}-rG" 
    location = var.location 
}

# k8s Module

module "k8s-cluster" {
    source = "./k8s"
    location = var.location
    rG_name = azurerm_resource_group.main.name
    project_name = var.project_name 
}


