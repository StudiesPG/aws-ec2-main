# Common terragrunt configuration for EC2.

terraform {
  source = "${local.souce_url}"
}


locals {
  # Defining a local variable to the path of the module
  souce_url = "${get_repo_root()}/terraform-modules/ec2" 
}

inputs = {}