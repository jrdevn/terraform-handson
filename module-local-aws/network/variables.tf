variable "cidr_vpc" {
  description = "Cidr Block para VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "Cidr Block para Subnet"
  type        = string
}

variable "environment" {
  description = "Ambiente onde o recurso vai ser utilizado"
  type        = string
}