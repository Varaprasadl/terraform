locals {
    common_tags = {
        Name = var.project,
        Environment = var.environment
        Terraform = "ture"
    }

    Name = "${var.project}-${var.environment}-${var.component}"
}