resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket343"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}