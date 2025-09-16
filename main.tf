terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }

  required_version = ">= 1.13.2"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "doblew" {
  ami = "ami-0634f3c109dcdc659"
  instance_type = "t3.micro"

  tags = {
    "Name"  = "doblew"
    Origin  = "Terraform"
  }
}
