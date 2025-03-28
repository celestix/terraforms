output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "machine_name" {
  value = module.compute.name
}

output "machine_username" {
  value = module.compute.username
}

output "machine_public_ip" {
  value = module.compute.public_ip
}