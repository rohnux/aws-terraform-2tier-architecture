resource "aws_route_table" "demo_private_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.nat_id
  }


  tags = {
    Name = "demo-private-route-table"
    Environment = var.Environment
  }
}

resource "aws_route_table_association" "demo_private_route_association"{
  depends_on = [
      aws_route_table.demo_private_route
  ]
    subnet_id = var.private_subnet_id
    route_table_id = "${aws_route_table.demo_private_route.id}"
}
