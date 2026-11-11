resource "aws_security_group" "functions" {
    name = "functions"

    tags = merge(
        
        var.tags_common,
        {
            Name = "Prasad"
            descrption = "Win"
        }
    
    )
}