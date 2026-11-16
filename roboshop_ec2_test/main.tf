module "ec2" {
  #source        = "../terraform_ec2_instance"
  source = "git::https://github.com/Varaprasadl/terraform.git//terraform_ec2_instance?ref=main"
  project       = var.project
  instance_type = var.instance_type
  environment   = var.environment
  component     = var.component
  sg_ids        = var.sg_ids
}