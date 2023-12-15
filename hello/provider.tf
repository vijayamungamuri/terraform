terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  # access_key = "AKIA54CUWDUJL2I2AJMZ"
  # secret_key = "jrkO1t8ictOXFCDYI7MKAFYOFX1eMgLXqTXhCb1l"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-buck332"

  tags = {
    Name = "My bucket"
  }
}

