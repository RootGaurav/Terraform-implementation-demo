locals {

  common_tags = {

    Project = "Terraform-Database"

    Environment = var.environment

    ManagedBy = "Terraform"

    Owner = "DevOps"

  }

}