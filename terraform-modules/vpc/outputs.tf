# This file defines the output values for the AWS VPC Module.
# Outputs are used to expose information about the resources created by this module.

output "aws_vpc_arn" {
  description = "The ARN of the VPC."
  value       = aws_vpc.main-demo.arn
}

output "aws_vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.main-demo.id
}