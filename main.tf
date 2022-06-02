
terraform {
  cloud {
    organization = "agustinavevo"

    workspaces {
      name = "gh-actions-demo"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.16.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-09d56f8956ab235b3" #ubuntu 
  instance_type = "t2.micro"

   tags = {
    Name = "my server terraform"
  }
}
