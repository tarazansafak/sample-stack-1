
terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
}
}

provider "aws" {
  region     = "eu-west-1"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket3453"

  tags = {
    Name        = "My bucket343"
    Environment = "Dev"
  }
}