module "constants" {
  source = "../../modules/constants"
}

resource "random_pet" "machine_name" {}

resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}


module "networking" {
  source   = "../../modules/networking"
  location = var.resource_group_location
  rg_name  = azurerm_resource_group.rg.name
  name     = var.resource_group_location
}

module "compute" {
  source               = "../../modules/compute"
  name                 = var.machine_name
  rg_name              = azurerm_resource_group.rg.name
  location             = var.resource_group_location
  size                 = module.constants.vm_sizes.small
  username             = var.username
  public_key           = file("~/.ssh/id_rsa.pub")
  network_interface_id = module.networking.network_interface_id
  storage_sku          = module.constants.storage_skus.standard
  os_image             = module.constants.os_images.ubuntu22
}