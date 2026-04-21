resource "local_sensitive_file" "sensitive-file" {
    filename = var.sensitive_file_name
    content = var.sensitive_file_content
}