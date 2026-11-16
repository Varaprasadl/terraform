locals {
    instance_type = "t3.micro"
    Name = ${var.project}-${var.environment}
    common_tags = {
        project = var.project
        environment = var.environment
        Terraform = true
    }
    ec2_tags = merge (
        common_tags,
        {
            Name = "${local.Name}-local-demo"
        }
    )
}