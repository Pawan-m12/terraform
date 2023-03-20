resource "null_resource" "local_provisioner" {
  
  provisioner "local-exec" {
    command = " sudo chmod 400 terraform/keys/my_pem.pem ; echo ${var.ec2_public_ip} > conf/public_ip.txt" 
  }
}