resource "aws_route53_record" "roboshop" {
    count = length(var.instance) - 1
    zone_id = var.zone_id
    name = "${var.instance[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = [aws_instance.roboshop[count.index].private_ip]
    allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
    count = contains(var.instance,"frontend") ? 1 : 0
    zone_id = var.zone_id
    name = "${var.domain_name}"
    type = "A"
    ttl = 1
    records = [aws_instance.roboshop[index(var.instance,"frontend")].public_ip]
    allow_overwrite = true
}