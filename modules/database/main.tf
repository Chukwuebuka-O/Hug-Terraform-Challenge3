resource "aws_db_subnet_group" "hug_terraform_prjct3_db_subnet_grp" {
  name       = "${var.project_name}-db-subnet-grp"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "${var.project_name}-db-subnet-grp"
  }
}

resource "aws_db_instance" "hug_terraform_prjct3_db" {
  identifier     = "${var.project_name}-db"
  engine         = var.db_engine
  engine_version = var.db_engine_version

  instance_class    = var.db_instance_class
  allocated_storage = var.db_allocated_storage
  storage_type      = var.db_storage_type

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.hug_terraform_prjct3_db_subnet_grp.name
  vpc_security_group_ids = [var.db_security_group_id]

  # Requirement: not reachable from the internet
  publicly_accessible = false

  skip_final_snapshot = true
  multi_az            = false
  storage_encrypted   = true

  tags = {
    Name = "${var.project_name}-db"
  }
}
