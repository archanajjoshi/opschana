terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  }

resource "aws_instance" "my_first_server" {
  ami           = "ami-0071c8c431eea0edb"
  instance_type = "t3.micro"
}