locals {

  subnets = [

    aws_subnet.public_subnet_1.id,

    aws_subnet.public_subnet_2.id,

    aws_subnet.private_subnet_1.id,

    aws_subnet.private_subnet_2.id

  ]

}
resource "aws_instance" "nginx" {

  count = length(local.subnets)

  ami = var.ami_id

  instance_type = var.instance_type

  subnet_id = local.subnets[count.index]

  key_name = var.key_name

  vpc_security_group_ids = [

    aws_security_group.nginx.id

  ]

  associate_public_ip_address = count.index < 2 ? true : false


  tags = merge(

    var.tags,

    {

      Name = "nginx-${count.index + 1}"

    }

  )

}