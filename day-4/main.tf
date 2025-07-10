provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a9991133"
    tags = {
      Name = "ec2-server"
    }
    instance_type = "t2.micro"
    key_name = "qwerty"



  
}
