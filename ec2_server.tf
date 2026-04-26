resource "aws_instance" "ec2_server" {
  ami                 = var.ami_id
  instance_type       = var.instance_type
  key_name            = aws_key_pair.tfeinfrakey.infrakey
  subnet_id           = var.subnet_id
  security_groups     = var.security_group


  tags = {
    Name = join("-", [locals.name, locals.name_1, locals.name_2, locals.region]-jenkins)
  }
}