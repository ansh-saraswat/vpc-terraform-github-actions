terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16"
    }
  }
  backend "s3" {
    bucket = "terraform-remote-backend-s3-17-nov-24"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"

  }
}

provider "aws" {
  region = "ap-south-1"
}