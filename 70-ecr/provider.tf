terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }

  backend "s3" {
    bucket = "81s-1remote-state-dev1"
    key    = "expense-ecr"
    region = "us-east-1"
    dynamodb_table = "81s-locking-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}