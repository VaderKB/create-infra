resource "tls_private_key" "ssh_keys"{
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "ec2_key_pair" {
  key_name = var.key_name
  public_key = tls_private_key.ssh_keys.public_key_openssh
}

resource "local_file" "name" {
    content = tls_private_key.ssh_keys.private_key_pem
    filename = "${path.module}/my_key_pair.pem"
}