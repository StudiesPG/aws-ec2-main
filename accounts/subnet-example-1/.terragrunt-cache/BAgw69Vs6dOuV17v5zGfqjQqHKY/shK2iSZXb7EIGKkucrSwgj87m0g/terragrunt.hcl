# Subnet Terragrunt file that includes inheritance configuration paths and input variables to the resource

include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "envcommon" {
  path = "${get_repo_root()}/_envcommon/subnet.hcl"
  expose = true
}
/*
dependency "vpc" {
  config_path = "git::https://github.com/StudiesPG/aws-vpc-demo"
}
*/
locals {}

inputs = {
  vpc_id = /*dependency.vpc.outputs.aws_vpc_id*/ "vpc-1234567"
  cidr_block = "10.0.0.0/16"
  region = "us-east-1"
  tags = {
    Name = "example-subnet"
    Project = "Demo"
    Environment = "test"
    ManagedBy = "Terraform"
  }
}