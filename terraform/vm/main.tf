resource "azurerm_linux_virtual_machine" "main" {
    count                 = var.vm_count

    name                  = "${var.project_name}-vm-${count.index}"
    resource_group_name   = var.group_name
    location              = var.location
    size                  = var.vm_size
    network_interface_ids = [var.interface_ids[count.index]]

    admin_username = "adminuser"
    admin_password = "LetMeIn!"

    disable_password_authentication = false

    os_disk {
        caching              = "ReadWrite"
        storage_account_type = var.storage_size
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS" # Change based on what the Linux VM will be
        version   = "latest"
    }    
}
