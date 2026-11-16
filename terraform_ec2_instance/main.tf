resource "aws_instance" "main" {
    ami = data.aws_ami.ami_info.id
    instance_type = var.instance_type
    vpc_security_group_ids = var.sg_ids

    tags = merge(
        var.ec2_tags,
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-${var.component}"
        }
    )
    
}