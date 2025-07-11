resource "aws_instance" "name" {
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    tags = {
      Name = "viva"
    }
  
}
resource "aws_instance" "name1" {
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    tags = {
      Name = "jackkkkkkkk"
    }
  
}
