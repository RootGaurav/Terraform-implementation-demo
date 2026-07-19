terraform {

  backend "s3" {

    bucket = "terraform-workspaces-demo"

    key = "application/terraform.tfstate"

    region = "us-east-1"

  }

}