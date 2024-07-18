
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
  backend "s3" {
    bucket = "devprj-bucket"
    key    = "expense-sg-eks-dev"
    region = "us-east-1"
    dynamodb_table = "devdyno"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"

}