variable "access_key" {}
variable "secret_key" {}
variable "region" {}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.10"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

# Create a VPC
resource "aws_vpc" "vpc-1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-1"
  }
}
