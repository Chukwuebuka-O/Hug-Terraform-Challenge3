output "db_instance_id" {
  description = "ID of the RDS instance"
  value       = aws_db_instance.hug_terraform_prjct3_db.id
}

output "db_endpoint" {
  description = "Connection endpoint of the RDS instance (host:port)"
  value       = aws_db_instance.hug_terraform_prjct3_db.endpoint
}

output "db_name" {
  description = "Name of the initial database"
  value       = aws_db_instance.hug_terraform_prjct3_db.db_name
}
