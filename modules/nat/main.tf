resource "aws_nat_gateway" "demo_nat" {

  allocation_id = var.allocation_id
  subnet_id     = var.subnet_id

  tags = {
    Name = "demo-nat"
  }

}
