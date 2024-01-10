terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Env = "Test"
      Dev = "okay"
    }
  }
}