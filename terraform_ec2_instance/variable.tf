variable "instance_type" {
    default = "t3.micro"
}

variable "project" {

}

variable "environment" {

}

variable "component" {

}

variable "ec2_tags" {
    default = {}
}

variable "sg_ids" {
    type = list
}