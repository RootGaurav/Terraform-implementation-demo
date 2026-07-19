terraform {

  backend "s3" {

    bucket = "terraform-workspaces-demo"

    key = "network/terraform.tfstate"

    region = "us-east-1"
  }

}