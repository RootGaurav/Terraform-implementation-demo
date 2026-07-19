# ============================================================
# EC2 Instance
# ============================================================

resource "aws_instance" "nginx" {

  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet_1.id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ec2"
    }
  )

}

# ============================================================
# Attach EC2 to Target Group
# ============================================================

resource "aws_lb_target_group_attachment" "nginx" {

  target_group_arn = aws_lb_target_group.main.arn

  target_id = aws_instance.nginx.id

  port = 80

}