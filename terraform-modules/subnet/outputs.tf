# This file defines the output values for the S3 Bucket Module.
# Outputs are used to expose information about the resources created by this module.

output "aws_subnet_id" {
  description = "The ID of the subnet"
  value = aws_subnet.main-demo.id
}

output "aws_subnet_arn" {
  description = "The ARN of the subnet"
  value = aws_subnet.main-demo.arn
}