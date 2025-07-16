module "ec2_instance" {
  source         = "git::https://github.com/vishnuthatiparthi/ec2-module.git"
  
  name           = "vivaa"
  instance_type  = "t2.micro"
  ami            = "ami-0150ccaf51ab55a51"
  subnet_id      = "subnet-071b73583e29b616a"
}