terraform {
    required_provider {
        aws = {
            source = "hashicorp/aws"
            version = "6.70.0"
        }
    }
    backend s3 {
        bucket = "learn-sss-bucket"
        key = "prod/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true
    }
}

provider "aws" {
    region = "us-east-1"
}