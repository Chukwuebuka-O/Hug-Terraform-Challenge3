variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-north-1"
}

variable "aws_availability_zone" {
  description = "AWS availability zone for the primary public/private subnets"
  type        = string
  default     = "eu-north-1a"
}

variable "aws_availability_zone_b" {
  description = "Second AWS availability zone, used only for the RDS subnet-group requirement"
  type        = string
  default     = "eu-north-1b"
}

variable "project_name" {
  description = "project name"
  type        = string
  default     = "HugTerraformprjct3"
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

variable "private_subnet_b" {
  description = "second private subnet (different AZ), required only for the RDS DB subnet group"
  type        = string
  default     = "10.0.31.0/24"
}

variable "vpc_name" {
  description = "vpc name"
  type        = string
  default     = "HugTerraformPrjctVPC"
}
