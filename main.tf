terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
  }
  
  cloud {
    organization = "agustinavevo"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}


provider "aws" {
  region = "us-east-1"
  access_key = vars.access_key
  secret_key = vars.secret_key
}

resource "aws_instance" "web" {
  ami           = "ami-09d56f8956ab235b3" #ubuntu 
  instance_type = "t2.micro"

   tags = {
    Name = "my server"
  }
}
