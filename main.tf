provider "aws" {
  region = var.aws_region
}

module "aws_vpc" {
  source   = "./modules/network"
  vpc_cidr = var.vpc_cidr
}

module "aws_security_group" {
  source   = "./modules/security"
  vpc_name = var.vpc_name
  aws_vpc  = module.aws_vpc.vpc_id
  my_ip    = var.my_ip
  db_port  = var.db_port
}

module "aws_instance" {
  source             = "./modules/instances"
  instance_type      = var.instance_type
  public_subnet_id   = module.aws_vpc.public_subnet_id
  security_group_id  = module.aws_security_group.security_group_id
}

module "aws_database" {
  source                = "./modules/database"
  private_subnet_ids    = module.aws_vpc.private_subnet_ids
  db_security_group_id  = module.aws_security_group.db_security_group_id
  db_instance_class     = var.db_instance_class
  db_allocated_storage  = var.db_allocated_storage
  db_username           = var.db_username
  db_password           = var.db_password
}
