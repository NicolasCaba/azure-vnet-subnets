# variables grupo de recursos
variable "rg_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "rg_location" {
  type        = string
  description = "Region donde se alojara el grupo de recursos"
}

# variables virtual network
variable "vnet_name" {
  type        = string
  description = "Nombre de la virtual network"
}

variable "vnet_address_space" {
  type        = string
  description = "Bloque CIDR de direcciones IPv4 para virtual network"
}
