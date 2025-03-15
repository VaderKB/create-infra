resource "aws_instance" "my_ec2" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    name = var.ec2_name
  }
  key_name = aws_key_pair.ec2_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.rules.id]

}