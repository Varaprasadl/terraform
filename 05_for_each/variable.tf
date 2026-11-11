variable "ami" {
    type = string
    default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "domain_name" {
    type = string
    default = "kamesh.store"
}

variable "zone_id" {
    type = string
    default = "Z10354933NXAGMDA0K5ZW"
}

variable "instance" {
    type = map
    default = {
        maongodb = {
            instance_type = "t3.micro"
            port = 27017
        }
        redis = {
            instance_type = "t3.large"
            port = 6379
        }
    }
}

variable "env" {
    type = string
    default = "dev"
}

variable "project" {
    type = string
    default = "roboshop"
}