provider "aws" {
  region  = "sa-east-1"
  shared_credentials_file = "/home/igor/.aws/credentials"
  profile = "default"
}  

resource "aws_s3_bucket" "state_file_bucket" {
  bucket = var.BucketName
}

resource "aws_s3_bucket_acl" "state_file_bucket_acl" {
  bucket = aws_s3_bucket.state_file_bucket.id
  acl    = "private"
}