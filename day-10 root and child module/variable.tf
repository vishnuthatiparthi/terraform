variable "region" {}
variable "vpc_cidr" {}
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }

variable "ami" {}
variable "instance_type" {}
variable "key_name" {}

variable "db_name" {}
variable "db_username" {}
variable "db_password" {}
variable "db_instance_class" {}
