# outputs grupo de recursos
output "rg-data" {
  description = "Mostrar id y nombre del grupo de recursos"
  value = {
    rg_id   = azurerm_resource_group.resource_group.id
    rg_name = azurerm_resource_group.resource_group.name
  }
}

# outputs virtual network
output "vnet-data" {
  description = "Mostrar id, nombre, cidr block de la virtual network"
  value = {
    vnet_id      = azurerm_virtual_network.vnet.id
    vnet_name    = azurerm_virtual_network.vnet.name
    vnet_address = azurerm_virtual_network.vnet.address_space
  }
}

# outputs public subnets
output "public-subnets" {
  description = "Mostrar id y nombre de las subredes publicas"
  value = { for v, subnet in aws_subnet.subnet_public : v => {
    subnet_id   = subnet.id,
    subnet_name = subnet.tags.Name
    }
  }
}


# outputs private subnets
output "private-subnets" {
  description = "Mostrar id y nombre de las subredes privadas"
  value = { for v, subnet in aws_subnet.subnet_private : v => {
    subnet_id   = subnet.id,
    subnet_name = subnet.tags.Name
    }
  }
}
