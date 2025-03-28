output "username" {
    value = azurerm_linux_virtual_machine.server.admin_username
}

output "name" {
    value = azurerm_linux_virtual_machine.server.name
}

output "public_ip" {
    value = azurerm_linux_virtual_machine.server.public_ip_address
}
