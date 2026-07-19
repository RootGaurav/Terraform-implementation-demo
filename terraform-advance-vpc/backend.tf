terraform {

  backend "s3" {

    bucket = "terraform-multi-az-vpc"

    key = "multi-az-vpc/terraform.tfstate"

    region = "us-east-1"

    encrypt = true

  }

}