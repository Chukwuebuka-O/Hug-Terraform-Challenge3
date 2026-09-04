output "instance_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.hug_terraform_prjct3_instance1.public_ip
}

output "webpage_url" {
  description = "URL to view the deployed webpage"
  value       = "http://${aws_instance.hug_terraform_prjct3_instance1.public_ip}"
}
