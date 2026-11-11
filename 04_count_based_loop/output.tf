output "instance_info" {
    value = aws_instance.roboshop[*].private_ip
}