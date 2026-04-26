resource "aws_instance" "ec2_server" {
  ami                 = var.ami_id
  instance_type       = var.instance_type
  key_name            = aws_key_pair.tfeinfrakey.key_name
  subnet_id           = var.subnet_id
  vpc_security_group_ids     = var.security_group


  tags = {
    Name = join("-", [local.name, local.name_1, local.name_2, local.region, "jenkins"])
  }
}