resource "aws_internet_gateway" "demo_ig" {
  vpc_id =  var.vpc_id

  tags = {
    Name = "demo-ig"
  }
}
