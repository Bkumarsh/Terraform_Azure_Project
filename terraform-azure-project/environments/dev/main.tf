module "resource_group" {
  source = "../../modules/resource_group"

  rg_name     = var.rg_name
  rg_location = var.rg_location
  rg_tags     = var.tags

}

module "vnet" {
  source = "../../modules/networking/vnet"

  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  location            = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_name
  tags                = var.tags
}

module "frontend_subnet" {

  source = "../../modules/networking/subnet"

  subnet_name = var.frontend_subnet_name

  resource_group_name = module.resource_group.rg_name

  virtual_network_name = module.vnet.vnet_name

  address_prefixes = var.frontend_subnet_prefix
}

module "backend_subnet" {

  source = "../../modules/networking/subnet"

  subnet_name = var.backend_subnet_name

  resource_group_name = module.resource_group.rg_name

  virtual_network_name = module.vnet.vnet_name

  address_prefixes = var.backend_subnet_prefix
}

module "database_subnet" {

  source = "../../modules/networking/subnet"

  subnet_name = var.database_subnet_name

  resource_group_name = module.resource_group.rg_name

  virtual_network_name = module.vnet.vnet_name

  address_prefixes = var.database_subnet_prefix
}

module "bastion_subnet" {

  source = "../../modules/networking/subnet"

  subnet_name = var.bastion_subnet_name

  resource_group_name = module.resource_group.rg_name

  virtual_network_name = module.vnet.vnet_name

  address_prefixes = var.bastion_subnet_prefix
}