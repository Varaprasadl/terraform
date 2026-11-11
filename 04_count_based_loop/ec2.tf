resource "aws_instance" "roboshop" {
    count = length(var.instance)
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [
        aws_security_group.common.id,
        aws_security_group.roboshop[count.index].id
        ]

    tags = {
        Name = "${var.project}-${var.env}-${var.instance[count.index]}"
    }
}

resource "aws_security_group" "common" {
    name = "${var.project}-${var.env}-common"
    description = "security group of the roboshop server"

    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.project}-${var.env}-common"
    }
}


resource "aws_security_group" "roboshop" {
    count = length(var.instance)
    name = "${var.project}-${var.env}-${var.instance[count.index]}"
    description = "security group of the roboshop server"

    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.project}-${var.env}-${var.instance[count.index]}"
    }
}