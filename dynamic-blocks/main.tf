terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "jhonata-remotestate-s3"
    key    = "aws-vpc-dynamic-block/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "jhonata"
      managed_by = "terraform"
    }
  }
}
