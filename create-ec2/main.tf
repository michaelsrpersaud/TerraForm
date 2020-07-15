terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = ">= 0.13.1"
}

// aws region details

provider "aws" {  
  profile = "EC2-Profile"
  region  = "us-west-1"
}

// Creating of AWS EC2 instance using AMi-ID specific to us-west 2

// look up current ami versions

resource "aws_instance" "app_server" {
  ami = "ami-xxxx"
  instance_type = "t2.nano"
  tags = {
    Name = "TestEC2"
  }
}
