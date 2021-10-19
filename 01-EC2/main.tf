terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
  ami = "ami-0a99b06fad09f48df"
  instance_type = "t2.micro"
  ebs_block_device {
    delete_on_termination = true
    volumn_size = 8
    device_name = "sdab"
  }
}