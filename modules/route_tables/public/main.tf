resource "aws_route_table" "demo_public_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }


  tags = {
    Name = "demo-public-route-table"
    Environment = var.Environment
  }
}

resource "aws_route_table_association" "demo_public_route_association"{
  depends_on = [
      aws_route_table.demo_public_route
  ]
    subnet_id = var.public_subnet_id
    route_table_id = "${aws_route_table.demo_public_route.id}"
}
