terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.70.0"
        }
    }

    backend s3 {
        bucket = "learn-sss-bucket"
        key = "dev/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true
    }
}