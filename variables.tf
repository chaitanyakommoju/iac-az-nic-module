variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}

variable "location" {
  description = "Azure region where NIC will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the Subnet to associate with NIC"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}
