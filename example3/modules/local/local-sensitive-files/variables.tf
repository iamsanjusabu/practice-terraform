variable "sensitive_file_name" {
    description = "Name of the sensitive file (ONLY \".txt\" FILE)"

    type = string
    default = "sensitive_file.txt"

    validation {
        condition = endswith(trimspace(var.sensitive_file_name), ".txt")
        error_message = "File name must end with \".txt\""
    }
}

variable "sensitive_file_content" {
    description = "Content of the sensitive file"

    type = string
    default = "Hello World but sensitive"
}