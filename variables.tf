variable "bucket_name"{
    type = string
    description = "Name of the bucket"
}

variable "ami_id" {
  type        = string
  description = "ami id for the instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
}
/*
variable "vpc_id" {
  type        = string
  description = "vpc id where the instance wiil be deployed"
}
*/

variable "subnet_id" {
  type        = list(string)
  description = "subnet id for the instance"
}

variable "security_group" {
  type        = list(string)
  description = "security groups for the instance"
}

variable "additional_tags" {
    type = map(string)
    description = "Additiona for tages for resources"
}