resource "aws_instance" "roboshop" {
    ami = var.ami 
    instance_type = var.envirolment == "dev" ? "t3.micro" : "t3.large"

    vpc_security_group_ids = [aws_security_group.roboshop.id]

    tags = {
        Name = "roboshop"
        Envirolment = "dev"
    }
}

resource "aws_security_group" "roboshop" {
    name = "roboshop"
    description = "SG for the roboshop sever"

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
        Name = "roboshop"
    }
}