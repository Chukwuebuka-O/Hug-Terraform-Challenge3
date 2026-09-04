resource "aws_security_group" "hug_terraform_prjct3_sc_grp" {
  name        = "${var.project_name}-web-sg"
  description = "Allow SSH (from my IP only) and HTTP inbound traffic and all outbound traffic"
  vpc_id      = var.aws_vpc

  ingress {
    description = "SSH from my IP only"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-web-sg"
  }
}


resource "aws_security_group" "hug_terraform_prjct3_db_sg" {
  name        = "${var.project_name}-db-sg"
  description = "Allow DB traffic from the web security group only"
  vpc_id      = var.aws_vpc

  ingress {
    description     = "DB access from web tier only"
    from_port       = var.db_port
    to_port         = var.db_port
    protocol        = "tcp"
    security_groups = [aws_security_group.hug_terraform_prjct3_sc_grp.id]
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-db-sg"
  }
}
