module "s3" {
  source = "./s3"

  bucket_name       = var.bucket_name
  bucket_tags       = var.bucket_tags
  bucket_versioning = var.bucket_versioning
}

module "ec2" {
  source = "./ec2"

  instance_tags = var.instance_tags
}