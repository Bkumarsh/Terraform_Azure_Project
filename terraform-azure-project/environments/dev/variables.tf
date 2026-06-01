variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "frontend_subnet_name" {
  type = string
}

variable "frontend_subnet_prefix" {
  type = list(string)
}

variable "backend_subnet_name" {
  type = string
}

variable "backend_subnet_prefix" {
  type = list(string)
}

variable "database_subnet_name" {
  type = string
}

variable "database_subnet_prefix" {
  type = list(string)
}

variable "bastion_subnet_name" {
  type = string
}

variable "bastion_subnet_prefix" {
  type = list(string)
}