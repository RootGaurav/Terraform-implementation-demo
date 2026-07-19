resource "aws_security_group" "app" {

  name = "app-sg"

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id

  ingress {

    from_port = 80

    to_port = 80

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

}

resource "aws_instance" "web" {

  ami = "ami-023d1674b3b54b931"

  instance_type = "t3.micro"

  subnet_id = data.terraform_remote_state.network.outputs.public_subnets[0]

  vpc_security_group_ids = [
    aws_security_group.app.id
  ]

}