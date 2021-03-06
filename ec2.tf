terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0bcf5425cdc1d8a85"
  instance_type = "t2.micro"

  tags = {
    Name = "myDAMMA"
  }
}