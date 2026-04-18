variable "python_script_1_name" {
  type    = string
  default = "python_script"
}

variable "python_script_1_content" {
  type    = string
  default = <<-EOF
    print("Hello World")
    print("PYTHON script created using Terraform")
    EOF

  validation {
    condition     = trimspace(var.python_script_1_content) == "print(\"Hello World\")\nprint(\"PYTHON script created using Terraform\")"
    error_message = "ERROR"
  }
}