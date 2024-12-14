terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "web_server" {
  ami           = "ami-07ee04759daf109de" # Replace with the desired AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "web-server"
  }
}
