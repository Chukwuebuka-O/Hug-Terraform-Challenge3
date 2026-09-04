variable "aws_region"{
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-north-1"
}
variable "aws_availability_zone"{
  description = "AWS availability zone"
  type        = string
  default     = "eu-north-1a"
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
variable "machine_image" {
  description = "machine image"
  type        = string
  default     = "ami-0aba19e56f3eaec05"
}

variable "vpc_cidr" {
	description = "CIDR block to be maintained for VPC" 
	type        = string
	default	    = "10.0.0.0/16"
}

variable "public_subnet" {
	description = "public subnet" 
	type        = string
	default	    = "10.0.1.0/24"
}

variable "private_subnet" {
	description = "private subnet" 
	type        = string
	default	    = "10.0.30.0/24"
}

variable "vpc_name"{
	description = "vpc name"
	type 		= string
	default 	= "HugTerraformPrjctVPC"
}

variable "security_group_id" {
  description = "ID of the security group"
  type       = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type       = string
}

variable "full_name" {
  description = "my name"
  type       = string
  default 	= "Chukwuebuka Okafor"  
}