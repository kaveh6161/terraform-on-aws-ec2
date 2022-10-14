# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-central-1"
}

# Resource Block
resource "aws_instance" "ec2-demo" {
  ami           = "ami-05ff5eaef6149df49" # Amazon Linux in eu-central-1, update as per your region
  instance_type = "t2.micro"
}
