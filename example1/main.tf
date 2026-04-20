resource "local_file" "file1" {
  filename = "${var.file1_name}"
  content  = "${var.file1_content}"
}

resource "local_sensitive_file" "file2" {
  filename = "${var.file2_name}"
  content  = "${var.file2_content}"
}