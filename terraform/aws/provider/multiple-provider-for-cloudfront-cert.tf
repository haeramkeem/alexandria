terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.17.1"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-2"
}

provider "aws" {
  alias  = "aws-region-virginia"
  region = "us-east-1"
}
