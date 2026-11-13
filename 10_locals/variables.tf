variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
  default = {
    Name = "roboshop"
    env = "dev"
  }
}