variable "ami" {
    type = string
    default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "project" {
    type = string
    default = "roboshop"
}

variable "envirolment" {
    type = string
    default = "dev"
}

variable "component" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","frontend"]
}

variable "zone_id" {
    type = string
    default = "Z10354933NXAGMDA0K5ZW"
}

variable "domain_name" {
    type = string
    default = "kamesh.store"
}