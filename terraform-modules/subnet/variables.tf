# File to define variables.

variable "vpc_id" {
  type = string
  description = "VPC ID"
  default = null
}

variable "cidr_block" {
  type = string
  description = "The CIDR block of the VPC"
  default = null
}

variable "region" {
  type = string
  description = "AWS region of the resource"
  default = null
}

variable "tags" {
  type = map(string)
  description = "Tags to apply to the resource"
  default = null
}