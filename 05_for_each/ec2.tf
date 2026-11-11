resource "aws_instance" "roboshop" {
    for_each = var.instance
    ami = var.ami
    instance_type = each.value.instance_type
    vpc_security_group_ids = [
        aws_security_group.common.id,
        aws_security_group.roboshop[each.key].id
    ]

    tags = {
        Name = "roboshop"
    }
}

resource "aws_security_group" "roboshop" {
    for_each = var.instance
    name = "${var.project}-${var.env}-${each.key}"
    description = "SG for the roboshop server"
    
    ingress {
        from_port = each.value.port
        to_port = each.value.port
        protocol = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.project}-${var.env}-${each.key}"
    }
}

resource "aws_security_group" "common" {
    name = "${var.project}-${var.env}-common"
    description = "SG for roboshop common server"

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.project}-${var.env}-common"
    }
}