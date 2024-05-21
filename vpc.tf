resource "aws_vpc" "main" {
  cidr_block       = var.cidr
  instance_tenancy = "default"
  enable_dns_hostnames = var.dns_hostnames

  tags = {
    Name = "main"
  }
}