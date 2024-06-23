provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "vrushabh" {
  bucket = "vru1.11"
  acl    = "private"
}
