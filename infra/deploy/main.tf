terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }
  backend "s3" {
    bucket               = "devops-recetas-app-tf-state-italiano"
    key                  = "tf-state-deploy"
    workspace_key_prefix = "tf-state-deploy-env"
    region               = "us-east-1"
    encrypt              = true
    dynamodb_table       = "devops-recipi-app-tf-lock-ita"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Enviroment = terraform.workspace
      Project    = var.project
      Contact    = var.contact
      ManagedBy  = "Terraform/deploy"

    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

data "aws_region" "current" {}
