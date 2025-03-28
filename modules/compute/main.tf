resource "azurerm_linux_virtual_machine" "server" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  size                = var.size
  admin_username      = var.username
  network_interface_ids = [
    var.network_interface_id,
  ]

  admin_ssh_key {
    username   = var.username
    public_key = var.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.storage_sku
  }

  source_image_reference {
    publisher = var.os_image.publisher
    offer     = var.os_image.offer
    sku       = var.os_image.sku
    version   = var.os_image.version
  }
}