terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
resource "aws_security_group" "ssh_access" {

  name = "terraform-ssh-security-group"

  ingress {
    description = "Allow SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }


  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}
resource "aws_instance" "server" {

  ami = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name


  security_groups = [
    aws_security_group.ssh_access.name
  ]


  tags = {
    Name = "Terraform-EC2"
  }

}
