resource "aws_s3_bucket" "tf_s3_bucket" {
    bucket = var.bucket_name

    tags = var.bucket_tags
}

resource "aws_s3_bucket_public_access_block" "tf_s3_bucket" {
  bucket = aws_s3_bucket.tf_s3_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "tf_s3_bucket" {
  bucket = aws_s3_bucket.tf_s3_bucket.id

  versioning_configuration {
    status = var.bucket_versioning ? "Enabled" : "Suspended"
  }
}