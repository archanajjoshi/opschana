terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWNVSY3UV3JZORW5O"
  secret_key = "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"
}

resource "aws_instance" "my_first_server" {
  ami           = "ami-0071c8c431eea0edb"
  instance_type = "t3.micro"
}