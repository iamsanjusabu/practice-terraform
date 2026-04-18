resource "local_sensitive_file" "file1" {
    for_each = toset(["1", "2", "3"])

    filename = "${each.value}${var.file1_name}"
    content = "${var.file1_content} ${each.value}"
}

resource "local_file" "file2" {
    filename = "local_file_1.txt"
    content = "local_file_1.txt content"
}