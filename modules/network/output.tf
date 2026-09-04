output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.hug_terraform_prjct3_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.hug_terraform_prjct3_public_subnet.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.hug_terraform_prjct3_private_subnet.id
}

output "private_subnet_b_id" {
  description = "ID of the second private subnet (AZ-b, for the RDS subnet group)"
  value       = aws_subnet.hug_terraform_prjct3_private_subnet_b.id
}

output "private_subnet_ids" {
  description = "IDs of both private subnets, for use in the RDS DB subnet group"
  value = [
    aws_subnet.hug_terraform_prjct3_private_subnet.id,
    aws_subnet.hug_terraform_prjct3_private_subnet_b.id
  ]
}

output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.main_nat.id
}
