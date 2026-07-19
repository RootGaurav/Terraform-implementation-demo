region = "us-east-1"

project_name = "nginx"

vpc_cidr = "10.0.0.0/16"

public_subnet_1_cidr = "10.0.1.0/24"

public_subnet_2_cidr = "10.0.2.0/24"

az1 = "us-east-1a"

az2 = "us-east-1b"

ami_id = "ami-023d1674b3b54b931"

instance_type = "t3.micro"

tags = {

  Project = "nginx"

  Environment = "Dev"

  Owner = "Gaurav"

}
