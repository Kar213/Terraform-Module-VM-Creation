module "vm" {
  source = "./modules/vm"

  # RG + location
  resource_group_name = var.resource_group_name
  location            = var.location

  # Networking
  vnet_name     = var.vnet_name
  subnet_name   = var.subnet_name
  address_space = var.address_space
  subnet_cidr   = var.subnet_cidr

  # Public IP
  enable_public_ip = var.enable_public_ip
  public_ip_name   = var.public_ip_name

  # VM
  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password

  # Image
  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version
}
