terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = "us-east-1"
  }

resource "aws_instance" "my_first_server" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
}