rg_name     = "dev-rg"
rg_location = "Central India"
tags = {
  environment = "dev"
  project     = "terraform-project"
}

vnet_name          = "dev-vnet"
vnet_address_space = ["10.0.0.16/24"]

frontend_subnet_name   = "frontend-subnet"
frontend_subnet_prefix = ["10.0.1.0/24"]

backend_subnet_name = "backend-subnet"

backend_subnet_prefix = ["10.0.2.0/24"]

database_subnet_name = "database-subnet"

database_subnet_prefix = ["10.0.3.0/24"]

bastion_subnet_name = "AzureBastionSubnet"

bastion_subnet_prefix = ["10.0.4.0/24"]