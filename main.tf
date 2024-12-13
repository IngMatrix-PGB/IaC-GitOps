terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
    organization = "DevopsGalicia"

    workspaces {
      name = "DevopsGalicia"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server-1" {
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  tags = {
    Name   = "DevOpsGalicia"
  }
}
