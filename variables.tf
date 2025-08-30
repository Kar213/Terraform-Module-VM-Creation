# Resource group + location
variable "resource_group_name" { type = string }
variable "location" { type = string } # e.g. "Central India" or "centralindia"

# Networking
variable "vnet_name" { type = string }
variable "subnet_name" { type = string }
variable "address_space" { type = list(string) } # e.g. ["10.0.0.0/16"]
variable "subnet_cidr" { type = list(string) }   # e.g. ["10.0.1.0/24"]

# Public IP control
variable "enable_public_ip" {
  description = "Create and associate a public IP with the NIC"
  type        = bool
  default     = true
}
variable "public_ip_name" {
  description = "Name of the Public IP (used only when enable_public_ip=true)"
  type        = string
  default     = "vm-public-ip"
}

# VM
variable "vm_name" { type = string }
variable "vm_size" {
  description = "Azure VM size (e.g. Standard_B1s)"
  type        = string
  default     = "Standard_B1s"
}

# Auth (password login for simplicity)
variable "admin_username" { type = string }
variable "admin_password" {
  type      = string
  sensitive = true
}

variable "image_publisher" {
  type    = string
  default = "Canonical"
}

variable "image_offer" {
  type    = string
  default = "UbuntuServer"
}

variable "image_sku" {
  type    = string
  default = "18.04-LTS"
}

variable "image_version" {
  type    = string
  default = "latest"
}
