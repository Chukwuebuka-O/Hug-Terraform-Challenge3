resource "aws_instance" "hug_terraform_prjct3_instance1" {
  ami                         = var.machine_image
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  user_data = templatefile("${path.module}/user_data.sh.tpl", {
    full_name = var.full_name
  })

  tags = {
    Name = "${var.project_name}-web-server"
  }
}
