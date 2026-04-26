resource "aws_key_pair" "infrakey" {
  key_name   = "infrakey"
  public_key = file( infrakey.pub)
}