region           = "us-east-1"
vpc_cidr         = "10.0.0.0/16"
public_subnets  = ["10.0.1.0/24", "10.0.3.0/24"]
private_subnets = ["10.0.2.0/24", "10.0.4.0/24"]

ami              = "ami-0150ccaf51ab55a51"
instance_type    = "t2.micro"
key_name         = "qwerty"

db_name          = "mydb"
db_username      = "admin"
db_password      = "Admin1234"
db_instance_class = "db.t3.micro"
