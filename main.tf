resource "local_sensitive_file" "python_script_1" {
  for_each = toset(["1.py", "2.py", "3.py"])

  filename = "${path.module}/${var.python_script_1_name}_${each.value}"
  content  = var.python_script_1_content
}