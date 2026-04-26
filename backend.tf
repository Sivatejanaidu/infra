terraform {
  backend "s3" {
    bucket = "mybackendtfebkt"
    key    = "env:/development/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
  }
}
