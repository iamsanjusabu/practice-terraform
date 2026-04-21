resource "local_file" "normal-file" {
    filename = var.normal_file_name
    content =  var.normal_file_content
}