# Later modules use karenge. ex- virtual machine, storage account, etc. 
# to create resources in this resource group. So, we need to output the name and location 
# of the resource group to use it in other modules.

output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "rg_location" {
  value = azurerm_resource_group.rg.location
}