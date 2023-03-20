resource "null_resource" "file_copy" {
  connection {
    type = "ssh"
    user = var.ec2_user
    private_key = file(var.ec2_pem)
    host = var.ec2_public_ip
    agent = false
  }
  
  provisioner "file" {
    source = var.source_path
    destination = var.destination_path
    
  }
}
