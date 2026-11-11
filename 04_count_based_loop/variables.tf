variable "ami" {
    type = string
    default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
    type = string
    default = "t3.micro"

    validation {
        condition = contains(["t3.micro","t3.small","t3.medium","t3.large"],var.instance_type)
        error_message = "Please use the valid instance type"
    }
}

variable "project" {
    type = string
    default = "roboshop"
}

variable "instance" {
    type = list
    default = ["mongodb", "redis", "mysql","rabbitmq","catalogue","cart","user","shipping","payment","frontend"]
}

variable "env" {
    type = string
    default = "dev"
}

variable "domain_name" {
    type = string
    default = "kamesh.store"
}

variable "zone_id" {
    type = string
    default = "Z10354933NXAGMDA0K5ZW"
}