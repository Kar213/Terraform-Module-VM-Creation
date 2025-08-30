# RG + location
variable "resource_group_name" { type = string }
variable "location"            { type = string }

# Networking
variable "vnet_name"     { type = string }
variable "subnet_name"   { type = string }
variable "address_space" { type = list(string) }
variable "subnet_cidr"   { type = list(string) }

# Public IP
variable "enable_public_ip" { type = bool }
variable "public_ip_name"   { type = string }

# VM
variable "vm_name"        { type = string }
variable "vm_size"        { type = string }
variable "admin_username" { type = string }
variable "admin_password" {
  type      = string
  sensitive = true
}

# Image
variable "image_publisher" { type = string }
variable "image_offer"     { type = string }
variable "image_sku"       { type = string }
variable "image_version"   { type = string }
