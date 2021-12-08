resource "aws_subnet" "demo_public_subnet" {
  vpc_id        = var.vpc_id
  cidr_block    = var.cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.Access_Pub}-demo-subnet"
    Access = var.Access_Pub
  }
}
