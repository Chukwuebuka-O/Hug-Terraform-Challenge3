variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-north-1"
}
variable "aws_availability_zone" {
  description = "AWS availability zone"
  type        = string
  default     = "eu-north-1a"
}

variable "full_name" {
  description = "full name to display on the webpage"
  type        = string
  default     = "Chukwuebuka Okafor"
}

variable "project_name" {
  description = "project name"
  type        = string
  default     = "HugTerraformprjct3"
}

variable "instance_type" {
  description = "EC2 instance"
  type        = string
  default     = "t3.micro"
}
variable "instance_name" {
  description = "EC2 name"
  type        = string
  default     = "hug_terraform_prjct3_instance1"
}
variable "machine_image" {
  description = "machine image"
  type        = string
  default     = "ami-0aba19e56f3eaec05"
}

variable "vpc_cidr" {
  description = "CIDR block to be maintained for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet" {
  description = "public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet" {
  description = "private subnet"
  type        = string
  default     = "10.0.30.0/24"
}

variable "vpc_name" {
  description = "vpc name"
  type        = string
  default     = "HugTerraformPrjctVPC"
}

variable "my_ip" {
  description = "my public ip for ssh access to my vm"
  type        = string
}

variable "db_port" {
  description = "TCP port the database listens on"
  type        = number
  default     = 3306
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage for the DB instance, in GB"
  type        = number
  default     = 20
}

variable "db_username" {
  description = "Master username for the db"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Master pword for the db"
  type        = string
  sensitive   = true
}
