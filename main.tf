resource "local_file" "python_script_1" {
  filename = "${path.module}/${var.python_script_1_name}"
  content  = var.python_script_1_content
}