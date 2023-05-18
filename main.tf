resource "aws_s3_bucket" "main" {
  bucket = var.bucket
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_ownership_controls" "s3_bucket_acl_ownership" {
  bucket = aws_s3_bucket.main.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
  
}

