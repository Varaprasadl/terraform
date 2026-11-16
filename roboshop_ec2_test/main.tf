module "ec2" {
  source        = "../terraform_ec2_instance"
  project       = var.project
  instance_type = var.instance_type
  environment   = var.environment
  component     = var.component
  sg_ids        = var.sg_ids
}