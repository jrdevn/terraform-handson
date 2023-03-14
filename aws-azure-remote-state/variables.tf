variable "location" {
  description = "Variável que indica a região onde os recursos estão alocados"
  type        = string
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Tier da Storage Account Amazon"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados do Storage Account"
  type        = string
  default     = "LRS"
}