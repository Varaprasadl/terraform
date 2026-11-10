resource "aws_instance" "web" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.web.id]

    tags = {
        Name = "web"
    }
}


resource "aws_security_group" "web" {
    name = "web"
    description = "SG for the web server"

    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = "0"
        to_port ="0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "web"
    }
}