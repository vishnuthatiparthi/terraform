resource "aws_instance" "name" {
    ami = "ami-0150ccaf51ab55a51"
    instance_type = "t2.micro"
    user_data = file("state.sh")
    tags = {
      Name ="dev"
    }

  
}