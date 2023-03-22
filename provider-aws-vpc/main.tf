terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "jhonata-remotestate-s3"
    key    = "aws-vpc-provider/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "jhonata"
      managed_by = "terraform"
      region     = "us-east-1"
    }
  }
}

provider "aws" {
  alias  = "europe"
  region = "eu-central-1"
  default_tags {
    tags = {
      owner      = "jhonata"
      managed_by = "terraform"
      region     = "eu-central-1"
    }
  }
}
