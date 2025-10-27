# File to denfine variables used by the EC2 instance module
variable "instance_type" {
  type = string
  description = "Type of instance to create"
  default = "t2.micro"
}

variable "key_name" {
  type = string
  description = "Name of the key pair to associate with the instance"
  default = null
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to create the instance in"
  default = null
}

variable "ami" {
  type = string
  description = "AMI to use for the instance"
  default = null
}

variable "tags" {
  type = map(string)
  description = "Tags to apply to the instance"
  default = null
}