module "normal_file" {
    source = "./modules/local/local-files"
    normal_file_name = var.normal_file_name
    normal_file_content = var.normal_file_content
}

module "sensitive_file" {
    source = "./modules/local/local-sensitive-files"
    sensitive_file_name = var.sensitive_file_name
    sensitive_file_content = var.sensitive_file_content
}