resource "tls_private_key" "tf_tls_ed25519" {
  algorithm = "ED25519"
}

resource "aws_key_pair" "tf_key_pair" {
  key_name   = "terraform-key"
  public_key = tls_private_key.tf_tls_ed25519.public_key_openssh
}

resource "local_sensitive_file" "tf_private_key" {
  filename = "${path.root}/secrets/tf-ec2-private-key.pem"
  content = tls_private_key.tf_tls_ed25519.private_key_openssh
}

resource "aws_security_group" "tf_sg" {
  name = "tf-sg"
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.tf_sg.id
  ip_protocol = "tcp"
  from_port = 22
  to_port = 22
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "all" {
  security_group_id = aws_security_group.tf_sg.id
  ip_protocol = "-1"
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_instance" "tf_ec2_instance" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t3.micro"
  key_name = aws_key_pair.tf_key_pair.key_name 
  tags = var.instance_tags
  vpc_security_group_ids = [aws_security_group.tf_sg.id]

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
}