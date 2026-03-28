# File to define variables used by the AWS VPC module

variable "cidr_block" {
  type = string
  description = "CIDR block for the VPC"
  default     = null
}

variable "region" {
  type = string
  description = "AWS region"
  default = null
}

variable "tags" {
  type = map(string)
  description = "Tags for the VPC"
  default = {}
}