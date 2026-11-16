locals {
  Name          = "${var.project}-demo"
  instance_type = "t3.large"
  common_tags = {
    Name        = "${var.project}-demo"
    Terraform   = true
    Environment = "prod"
  }
  ec2_tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-local-demo"
    }
  )
}