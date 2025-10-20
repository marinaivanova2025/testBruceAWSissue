terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "free_tier_ec2" {
  ami           = "ami-0c02fb55956c7d316" 
  instance_type = "t2.micro"          
}
