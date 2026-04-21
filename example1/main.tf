locals {
  base_path = path.module
}

resource "local_file" "file1" {
  filename = "${local.base_path}/${var.file1_name}"
  content  = var.file1_content
}

resource "local_sensitive_file" "file2" {
  filename = "${local.base_path}/${var.file2_name}"
  content  = var.file2_content
}