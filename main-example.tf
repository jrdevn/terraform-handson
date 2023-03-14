terraform {
    required_version = ">= 1.1.0" // versao q vai rodar

    required_providers { 
        aws = {
            version = ">= 3.50.0"
            source = "hashicorp/aws"
        }
        azurerm  = {
            version = "2.70.0"
            source = "hashicorp/azurerm"
        }
    }
    
    backend "s3" {
        
    }
}

provider "aws" { // provider
}

resource "aws_instance" "vm1" { // recurso, vm da aws
}

data "aws_ami" "ami" { // data, ex: imagem da aws
}

module "vpc" { // modulos
}

variable "ip" {  // variaveis
}

output "vm1_ip_public" { // exportar recurso

}

locals { // funções do terraform

}
