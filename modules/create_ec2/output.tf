output "ec2_private_ip_address" {
    value = aws_instance.my_ec2_instance.public_ip
}