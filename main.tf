provider "aws" {
  region     = "ca-central-1"
  access_key = "AKIAZDRQUJRIOLVOJ35X"
  secret_key = "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"
}
resource "aws_s3_bucket" "b" {
  bucket = "mybucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
