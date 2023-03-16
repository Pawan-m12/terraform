resource "aws_instance" "my-instance" {
 
 ami = "ami-0f8ca728008ff5af4"
 instance_type = "t2.micro"
 count = 1
 tags = {
     Name = "TERRAFORM"
 }

}