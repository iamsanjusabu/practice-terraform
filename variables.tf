variable "python_script_1_name" {
  type    = string
  default = "python_script_1.py"
}

variable "python_script_1_content" {
  type    = string
  default = <<-EOF
    print("Hello World")
    EOF

  validation {
    condition     = trimspace(var.python_script_1_content) == "print(\"Hello World\")"
    error_message = "This value cannot be changed"
  }
}