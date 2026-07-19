variable "region" {
  default = "us-east-1"
}

variable "environment" {
  default = "dev"
}

variable "mysql_enabled" {
  type = bool
}

variable "postgres_enabled" {
  type = bool
}

variable "mongodb_enabled" {
  type = bool
}

variable "redis_enabled" {
  type = bool
}

variable "cassandra_enabled" {
  type = bool
}

variable "instance_count" {
  type = number
}