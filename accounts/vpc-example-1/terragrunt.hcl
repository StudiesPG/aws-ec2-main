# VPC Terragrunt file that includes inheritance configuration paths and input variables to the resource

include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "envcommon" {
  path = "${get_repo_root()}/_envcommon/vpc.hcl"
  expose = true
}

locals {}

inputs = {
  cidr_block = "10.0.0.0/16"
  region = "us-east-1"
  tags = {
    Name = "demo-instance"
    Project = "Demo"
    Environment = "dev"
    ManagedBy = "Terraform"
  }
}