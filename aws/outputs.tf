# S3

output "bucket_name" {
    value = module.s3.bucket_name
}

output "bucket_arn" {
    value = module.s3.bucket_arn
}

output "bucket_region" {
    value = module.s3.bucket_region
}

# EC2

output "instance_id" {
    value = module.ec2.instance_id
}

output "public_ip" {
    value = module.ec2.public_ip
}

output "private_ip" {
    value = module.ec2.private_ip
}
