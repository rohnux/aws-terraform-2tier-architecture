resource "aws_vpc" "demo_vpc" {

cidr_block           = var.cidr_block
enable_dns_support   = var.enable_dns_support
enable_dns_hostnames = var.enable_dns_hostnames
instance_tenancy     = var.instance_tenancy

    tags = {
        Name = "demo-vpc"
    }
}
