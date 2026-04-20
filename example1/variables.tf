variable "file1_name" {
  description = "python script name #1"

  type    = string
  default = "app1.py"

  validation {
    condition     = endswith(var.file1_name, ".py")
    error_message = "File name should end with the extension .py"
  }
}

variable "file1_content" {
  description = "python script content #1"

  type    = string
  default = "print(\"Hello World\")"
}


variable "file2_name" {
  description = "python script name #2"

  type    = string
  default = "app2.py"

  validation {
    condition     = endswith(var.file2_name, ".py")
    error_message = "File name must end with the extension .py"
  }
}

variable "file2_content" {
  description = "python script content #2"

  type    = string
  default = "print(\"Hello World\")"
}