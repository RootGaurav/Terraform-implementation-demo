variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "EC2 AMI ID"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
}
