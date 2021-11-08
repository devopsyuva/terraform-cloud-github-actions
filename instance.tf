resource "aws_instance" "web" {
  ami                         = var.ami_id #ami-09e67e426f25ce0d7 --> Ubuntu 20.04 LTS Free Tier Image
  instance_type               = var.inst_type
  key_name                    = "sudhams_virginia_demo"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]
  user_data                   = file("nginx-install.sh")
  availability_zone           = var.az_name
  associate_public_ip_address = true

  tags = local.common_tags
}
