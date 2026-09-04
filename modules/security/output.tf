output "security_group_id" {
  description = "ID of the web-tier security group"
  value       = aws_security_group.hug_terraform_prjct3_sc_grp.id
}

output "security_group_name" {
  description = "name of the web-tier security group"
  value       = "${var.project_name}-web-sg"
}

output "db_security_group_id" {
  description = "ID of the database-tier security group"
  value       = aws_security_group.hug_terraform_prjct3_db_sg.id
}
