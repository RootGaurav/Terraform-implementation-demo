data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "terraform-workspaces-demo"

    key = "network/terraform.tfstate"
        
    region = "us-east-1"

  }

}