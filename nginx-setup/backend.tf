terraform {

  backend "s3" {

    bucket = "gaurav-terraform-s1-backend"

    key = "nginx-project/terraform.tfstate"

    region = "us-east-1"

    encrypt = true

  }

}