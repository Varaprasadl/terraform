resource "aws_route53_record" "roboshop" {
  count = length(var.component)  
  zone_id = var.zone_id
  name    = "${var.component[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].private_ip]
  allow_overwrite = true

}

resource "aws_route53_record" "frontend" {
    count = contains(var.component,"frontend") ? 1 : 0
    zone_id = var.zone_id
    name = "${var.domain_name}"
    type = "A"
    ttl = 1
    records = [aws_instance.roboshop[index(var.component,"frontend")].public_ip]
    allow_overwrite = true
}

