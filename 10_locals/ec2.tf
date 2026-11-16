resource "aws-instance" "locals-demo" {
    ami = data.aws_ami.ami_info.id
    instance_type = local.instance_type
    vpc_security_group_ids = [
        aws_security_group.locals-demo.id
    ]

    tags = merge(
        Name = var.project,
        local.commom_tags
    )
}