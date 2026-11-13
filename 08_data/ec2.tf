resource "aws_instance" "data" {
    instance_type = "t3.small"
    ami = data.aws_ami.ami_info.id

    tags = {
        Name = "ami-dem0-${data.aws_ami.ami_info.id}"
    }
}