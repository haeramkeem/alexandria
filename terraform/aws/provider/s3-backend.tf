terraform {
  backend "s3" {
    bucket         = "example-tfstate-bucket"
    key            = "example-tfstate-key"
    region         = "ap-northeast-2"
    dynamodb_table = "example-tfstate-locking"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.17.1"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}
