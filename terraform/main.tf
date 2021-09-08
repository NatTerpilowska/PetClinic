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

# Virtual netwrok module

module "vnet" {
    source       = "./vnet"
    project_name = var.project_name
    group_name   = azurerm_resource_group.main.name
    location     = var.location
    vm_count     = var.vm_count
}


# Virtual machines module

module "vm" {
    source        = "./vm"
    project_name  = var.project_name
    group_name    = azurerm_resource_group.main.name
    location      = var.location
    interface_ids = module.vnet.interface_ids

    vm_count      = var.vm_count
    vm_size       = var.vm_size
    storage_size  = var.storage_size
}


