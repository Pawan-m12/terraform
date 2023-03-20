resource "null_resource" "file_copy" {
  connection {
    type = "ssh"
    user = var.ec2_user
    private_key = file(var.ec2_pem)
    host = var.ec2_public_ip
    agent = false
  }
  
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install tq git -y",
      "echo 'this is test file to check remote-exe' > remote.txt"
    ]
    
  }
}