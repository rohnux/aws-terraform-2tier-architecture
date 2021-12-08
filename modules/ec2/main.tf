resource "aws_instance" "instance" {

  ami           = var.ami
  instance_type = var.instance_type

  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.instance_profile
  key_name                    = var.ssh_key
  vpc_security_group_ids      = [var.vpc_security_group_ids]

  tags = {
      Name            = "demo-${var.Accesstype}-${var.Environment}"
      Environment     = var.Environment
      Accesstype      = var.Accesstype
  }
}
