resource "aws_subnet" "demo_private_subnet" {
  vpc_id        = var.vpc_id
  cidr_block    = var.cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.Access_Pri}-demo-subnet"
    Access = var.Access_Pri
  }
}
