output "nic_id" {
  description = "ID of the Network Interface"
  value       = azurerm_network_interface.this.id
}

output "nic_private_ip" {
  description = "Private IP address assigned to the NIC"
  value       = azurerm_network_interface.this.private_ip_address
}
output "id" {
  value = azurerm_network_interface.this.id
}
output "vm_private_ip" {
  value = azurerm_network_interface.this.private_ip_address
}
