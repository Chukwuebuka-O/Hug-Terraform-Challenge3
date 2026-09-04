variable "project_name" {
  description = "project name"
  type        = string
  default     = "hugterraformprjct3"
}

variable "private_subnet_ids" {
  description = "IDs of the private subnets to place the DB subnet group in (must span 2+ AZs)"
  type        = list(string)
}

variable "db_security_group_id" {
  description = "ID of the security group that only allows traffic from the web tier"
  type        = string
}

variable "db_engine" {
  description = "Database engine (e.g. mysql, postgres)"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
  default     = "8.0"
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

variable "db_storage_type" {
  description = "Storage type (gp2, gp3, io1, etc.)"
  type        = string
  default     = "gp3"
}

variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "hugterraformprjct3db"
}

variable "db_username" {
  description = "Master username for the db"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Master password for the db"
  type        = string
  sensitive   = true
}
