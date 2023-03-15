resource "aws_instance" "my-ec2-instance" {
 
 ami = "ami-0f8ca728008ff5af4"
 instance_type = "t2.micro"
 tags = {
     Name = "TERRAFORM"
 }

}