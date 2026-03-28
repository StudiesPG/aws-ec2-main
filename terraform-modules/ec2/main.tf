# Main file of the module, defining the resource(s) to be provisioned

resource "aws_instance" "demo-instance" {
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = var.subnet_id
  ami = var.ami
  tags = var.tags
}