output "instance_public_ip" {
  description = "Public IP address of web server"
  value       = module.aws_instance.instance_public_ip
}

output "webpage_url" {
  description = "URL to view my webpage"
  value       = "http://${module.aws_instance.instance_public_ip}"
}

output "vpc_id" {
  description = "ID created VPC"
  value       = module.aws_vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.aws_vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.aws_vpc.private_subnet_id
}

output "db_endpoint" {
  description = "Connection endpoint of the RDS instance"
  value       = module.aws_database.db_endpoint
}
