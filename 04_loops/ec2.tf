resource "aws_instance" "roboshop" {
    count = length(var.component)
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [
        aws_security_group.common.id,
        aws_security_group.roboshop[count.index].id
    ]

    tags = {
        Name = "${var.project}-${var.envirolment}-${var.component[count.index]}"
    }
}


resource "aws_security_group" "common" {
    name = "${var.project}-${var.envirolment}-common"
    description = "SG for the roboshop project"

    tags = {
        Name = "${var.project}-${var.envirolment}-common"
    }
}



resource "aws_security_group" "roboshop" {
    count = length(var.component)
    name = "${var.project}-${var.envirolment}-${var.component[count.index]}"
    description = "SG for the roboshop project"

    tags = {
        Name = "${var.project}-${var.envirolment}-${var.component[count.index]}"
    }
}