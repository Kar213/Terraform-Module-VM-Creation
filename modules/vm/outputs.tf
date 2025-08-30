output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "private_ip" {
  value = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
}

output "public_ip" {
  value = try(azurerm_public_ip.pip[0].ip_address, null)
}
