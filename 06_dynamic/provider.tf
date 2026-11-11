variable "ingress_rules" {
    type = map
    default = {
        mongodb = {
            port = 27017
            cidr_blocks = ["0.0.0.0/0"]
            descrption = "opening port 27017 from the IP for the mg db access"
        }
        mysql = {
            port = 3306
            cidr_blocks = ["0.0.0.0/0"]
            descrption = "Opening port for 3306 from the IP for the mysql access"
        }
    }

}