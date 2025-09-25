terraform {

  required_version = ">= 1.13.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = "http://localhost:4566"
    ec2 = "http://localhost:4566"
  }

  # Force path-style addressing for S3
  s3_use_path_style = true

  default_tags {
    tags = {
      Managed_By = "Terraform"
      Project    = "Terraform Training"
    }
  }
}

