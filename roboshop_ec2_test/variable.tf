variable "instance_type" {
  default = "t3.small"
}

variable "project" {
  default = "roboshop"

}

variable "environment" {
  default = "dev"
}

variable "component" {
  default = "mongodb"
}

variable "sg_ids" {
  type    = list(any)
  default = ["sg-038e38d0228dea9a5"]
}