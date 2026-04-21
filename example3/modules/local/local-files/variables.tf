variable "normal_file_name" {
    description = "Name of the normal file (ONLY \".txt\" FILE)"
    
    type = string
    default = "file.txt"
}

variable "normal_file_content" {
    description = "Content of the normal file"

    type = string
    default = "Hello World"
}