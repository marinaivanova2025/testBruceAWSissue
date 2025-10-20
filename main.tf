terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-unique-test-bucket-12345" 
  acl    = "private"

  tags = {
    Name        = "TestBucket"
    Environment = "Test"
  }
}
