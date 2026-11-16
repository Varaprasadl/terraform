resource "aws_instance" "provisioners_demo" {
  ami           = data.aws_ami.ami_info.id
  instance_type = var.instance_type
  vpc_security_group_ids = [
    aws_security_group.provisioners_demo.id
  ]
  tags = {
    Name        = var.project
    Environment = "dev"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > inventory.ini"
  }

    connection {
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = self.public_ip
    }

    provisioner "file" {
        source = "bootsetup.sh"
        destination = "/tmp/bootsetup.sh"
    }

    provisioner "remote-exec" {
        inline = [
            "chmod +x /tmp/bootsetup.sh",
             "sudo sh /tmp/bootsetup.sh"
        ]
    }

    provisioner "remote-exec" {
        when = destroy
        inline = [
            "sudo systemctl stop nginx"
        ]
    }

    # provisioner "remote-exec" {
    #     inline = [
    #         "sudo dnf install nginx -y",
    #         "sudo systemctl start nginx",
    #         "sudo systemctl enable nginx"
    #     ]
    # }

}

resource "aws_security_group" "provisioners_demo" {
  name        = "provisioners-demo"
  description = "sg for the provisioners_demo"

  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(

    {
      Name        = var.project
      Environment = "dev"
    },
    local.ec2_tags
  )
}