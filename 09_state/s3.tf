resource "aws_s3_bucket" "sample4747" {
    bucket = "learn-sss-bucket"

    lifecycle {
    create_before_destroy = true
}
} 

