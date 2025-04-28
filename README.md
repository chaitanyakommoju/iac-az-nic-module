# iac-az-nic-module
# Azure Network Interface Deployment with Terraform
This Terraform configuration deploys an Azure Network Interface (NIC) for use in a virtual network.

## Resource: `azurerm_network_interface`
The `azurerm_network_interface` resource defines the Azure Network Interface that can be attached to a virtual machine or other resources requiring network connectivity.

## Configuration
```hcl
resource "azurerm_network_interface" "this" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.nic_name}-ipconfig"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.tags
}
```

## Arguments
- **name**: The name of the network interface.
- **location**: The Azure region where the network interface will be deployed.
- **resource_group_name**: The name of the resource group where the network interface will be created.
- **ip_configuration**: Configures the IP settings for the network interface.
  - **name**: The name of the IP configuration.
  - **subnet_id**: The ID of the subnet to which the NIC will be connected.
  - **private_ip_address_allocation**: Defines whether the private IP address allocation is dynamic or static. In this case, it's set to "Dynamic".
- **tags**: Tags applied to the NIC resource for resource management.


## Variables
Variable Name	Description
nic_name	The name of the network interface.
location	The location of the network interface (Azure region).
resource_group_name	The name of the resource group where the NIC will be deployed.
subnet_id	The subnet ID to associate with the NIC.
tags	Tags to be applied to the NIC resource.

## Example Usage
```hcl
module "network_interface" {
  source              = "./modules/azurerm_network_interface"
  nic_name            = "myNIC"
  location            = "East US"
  resource_group_name = "myResourceGroup"
  subnet_id           = "your-subnet-id"
  tags                = {
    environment = "production"
  }
}
```
This example will create an Azure Network Interface, attach it to the specified subnet, and apply the provided tags.