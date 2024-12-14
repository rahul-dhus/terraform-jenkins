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
  ami           = "ami-0453ec754f44f9a4a" # Replace with the desired AMI ID
  instance_type = "var.ec2_instance_type"
  tags = {
    Name = "web-server"
  }
}
