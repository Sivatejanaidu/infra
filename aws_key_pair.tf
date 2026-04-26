resource "aws_key_pair" "tfeinfrakey" {
  key_name   = "infrakey"
  public_key = file("infrakey.pub")
}