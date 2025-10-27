# Main file of the module, defining the resource(s) to be provisioned

resource "aws_vpc" "main-demo" {
  cidr_block =  var.cidr_block
  region = var.region
  tags = var.tags
}