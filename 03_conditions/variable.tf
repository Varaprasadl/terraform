variable "ami" {
    type = string
    default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "envirolment" {
    type = string
    default = "dev"
}

variable "project" {
    type = string
    default = "roboshop"
}

variable "component" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq"]
}