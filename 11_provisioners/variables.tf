variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "project" {
  type    = string
  default = "provisioners"
}

variable "envirolment" {
  type    = string
  default = "dev"
}

variable "ec2_tagss" {
  type = map(string)
  default = {
    Name        = "provisioners_demo"
    description = "test"
    terraform   = true
  }
}