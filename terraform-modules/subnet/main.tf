resource "aws_subnet" "main-demo" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
  region = var.region
  tags = var.tags
}