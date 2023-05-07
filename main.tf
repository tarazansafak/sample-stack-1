
terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    spacelift = {
    source = "spacelift-io/spacelift" }

  }
}

resource "spacelift_stack" "this" {
  name           = "sample-stack"
  repository     = "sample-stack-1"
  branch         = "main"
}