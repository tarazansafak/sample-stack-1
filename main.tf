
terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "safak-1-s3-sample-stack"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}