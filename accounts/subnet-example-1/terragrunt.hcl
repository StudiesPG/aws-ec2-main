# Subnet Terragrunt file that includes inheritance configuration paths and input variables to the resource

include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "envcommon" {
  path = "${get_repo_root()}/_envcommon/subnet.hcl"
  expose = true
}

locals {}

dependency "vpc" {
  config_path = "${get_repo_root()}/accounts/vpc-example-1"
  mock_outputs_allowed_terraform_commands = ["init", "validate", "plan"]
  mock_outputs = {
    vpc_id         = "fake-id"
    private_az_subnet_ids = {
      "fake-az" = "fake-subnet-id"
    }
  }
}

inputs = {
  vpc_id = dependency.vpc.outputs.aws_vpc_id
  cidr_block = "10.0.0.0/16"
  region = "us-east-1"
  tags = {
    Name = "example-subnet"
    Project = "Demo"
    Environment = "test"
    ManagedBy = "Terraform"
  }
}