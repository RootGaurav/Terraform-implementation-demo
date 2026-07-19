output "instance_id" {

  value = aws_instance.this.id

}

output "public_ip" {

  value = aws_instance.this.public_ip

}

output "iam_role" {

  value = aws_iam_role.ec2_role.name

}