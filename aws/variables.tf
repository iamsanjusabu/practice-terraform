variable "bucket_name" {
  description = "Name of the bucket (MUST be globally unique in AWS)"

  type    = string
}

variable "bucket_versioning" {
  description = "Bucket versioning: ON (true) / OFF (false)"

  type    = bool
}

variable "bucket_tags" {
  description = "Collection of (dictionary/hashmap) tags"

  type = map(string)
}