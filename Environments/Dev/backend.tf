terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.0"
    }
  }

  backend "s3" {
    bucket         = "jacsterraformbucket"
    key            = "Environments/Dev/terraform.tfstate"
    region         = var.backend_region
    dynamodb_table = var.backend_dynamodb_table
  }
}

provider "aws" {
region = "ap-southeast-1    "
}