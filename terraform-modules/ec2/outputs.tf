# This file defines the output values for the EC2 Instance Module.
# Outputs are used to expose information about the resources created by this module.

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.demo-instance.id
}

output "ec2_instance_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.demo-instance.public_ip
}

output "ec2_instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.demo-instance.arn
}