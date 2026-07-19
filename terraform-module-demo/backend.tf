terraform {

  backend "s3" {

    bucket  = "terraform-state-bucket-modules"

    key     = "ec2-module/terraform.tfstate"

    region  = "us-east-1"

    encrypt = true

  }

}