resource "azurerm_virtual_network" "main" {
    name                = "${var.project_name}-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = var.location
    resource_group_name = var.group_name
}

resource "azurerm_subnet" "main" {
    name                 = "internal"
    resource_group_name  = var.group_name
    virtual_network_name = azurerm_virtual_network.main.name
    address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "main" {
    count               = var.vm_count

    name                = "${var.project_name}-nic-${count.index}"
    location            = var.location
    resource_group_name = var.group_name

    ip_configuration {
        name                          = "internal-${count.index}"
        subnet_id                     = azurerm_subnet.main.id
        private_ip_address_allocation = "Dynamic"
    }
}
