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

variable "project_name" {
  description = "project name"
  type        = string
  default     = "HugTerraformprjct3"
}

variable "vpc_name" {
  description = "vpc name"
  type        = string
}

variable "aws_vpc" {
  description = "aws vpc id"
  type        = string
}

variable "my_ip" {
  description = "mine public IP"
  type        = string
}

variable "db_port" {
  description = "TCP port for the database"
  type        = number
  default     = 3306
}
