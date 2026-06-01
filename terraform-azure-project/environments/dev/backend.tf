terraform {
  backend "azurerm" {
    resource_group_name  = "bhakua_rg"
    storage_account_name = "bhkuastorageaccount"
    container_name       = "bhakuacontainer"
    key                  = "dev.terraform.tfstate"
  }
}