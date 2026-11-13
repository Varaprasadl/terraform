resource "aws_instance" "locals-demo" {
  ami           = data.aws_ami.aws_info.id
  instance_type = var.instance_type

  tags = merge(
    var.ec2_tags,
    {
        Name = local.Name
    }
    
  )


}