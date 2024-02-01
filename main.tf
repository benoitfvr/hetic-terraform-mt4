terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "hetic_aws_terraform_ec2" {
  ami           = "ami-03eb7a5d774d59f31"
  instance_type = "t2.micro"

  tags = {
    Name = "hetic-aws-terraform-ec2"
  }
}

resource "aws_s3_bucket" "hetic_aws_terraform_s3" {
  bucket = "hetic-aws-terraform-s3"

  tags = {
    Name = "hetic-aws-terraform-s3"
  }
}
