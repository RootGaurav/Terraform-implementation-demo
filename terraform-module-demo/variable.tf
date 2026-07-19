variable "region" {
  description = "AWS Region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}


variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "tags" {
  description = "Common Tags"
  type        = map(string)
}