resource "azurerm_virtual_network" "server" {
  name                = "${var.name}-vnet"
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "server" {
  name                 = "${var.name}-subnet"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.server.name
  address_prefixes     = [var.address_prefix]
}

resource "azurerm_network_interface" "server" {
  name                = "${var.name}-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "${var.name}-nic-ip"
    subnet_id                     = azurerm_subnet.server.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.server.id
  }
}

resource "azurerm_public_ip" "server" {
  name                = "${var.name}-public-ip"
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Static"
}