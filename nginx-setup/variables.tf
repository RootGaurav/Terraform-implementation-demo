variable "region" {
  type = string
}

variable "project_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_1_cidr" {
  type = string
}

variable "public_subnet_2_cidr" {
  type = string
}

variable "az1" {
  type = string
}

variable "az2" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "tags" {
  type = map(string)
}

