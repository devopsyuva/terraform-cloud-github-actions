# Terraform AWS provider Actions
terraform {
  required_version = ">= 1.0.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "visualpath-demo"
    workspaces {
      name = "terraform-github-actions"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
