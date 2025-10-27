# EC2 Terragrunt file that includes inheritance configuration paths and input variables to the resource

include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "envcommon" {
  path = "${get_repo_root()}/_envcommon/ec2.hcl"
  expose = true
}

locals {}

inputs = {
  instance_type = "t2.micro"
  key_name = "my-ec2-key"
  subnet_id = ""
  ami = "ec2-ami-studiespg"
  tags = {
    Name = "demo-instance"
    Project = "Demo"
    Environment = "dev"
    ManagedBy = "Terraform"
  }
}