provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
}

module "ec2" {
  source              = "./modules/ec2"
  ami                 = var.ami
  instance_type       = var.instance_type
  key_name            = var.key_name
  subnet_id           = module.vpc.public_subnet_ids[0]
  vpc_security_group_ids = [module.vpc.default_sg_id]
}

module "rds" {
  source                = "./modules/rds"
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
  db_instance_class     = var.db_instance_class
  subnet_ids            = module.vpc.private_subnet_ids
  vpc_security_group_ids = [module.vpc.default_sg_id]
}

resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a999113345656"
    instance_type = "t2.micro"
    #key_name = "test"
    tags = {
      Name = "test"
    }
}