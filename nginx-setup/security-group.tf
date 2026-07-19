# ============================================================
# ALB Security Group
# ============================================================

resource "aws_security_group" "alb_sg" {

  name        = "${var.project_name}-alb-sg"
  description = "Security Group for Application Load Balancer"
  vpc_id      = aws_vpc.main.id

  ingress {

    description = "HTTP"

    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    description = "HTTPS"

    from_port = 443
    to_port   = 443
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-alb-sg"
    }
  )

}

# ============================================================
# EC2 Security Group
# ============================================================

resource "aws_security_group" "ec2_sg" {

  name        = "${var.project_name}-ec2-sg"
  description = "Security Group for EC2"
  vpc_id      = aws_vpc.main.id

  ingress {

    description = "HTTP from ALB"

    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    security_groups = [
      aws_security_group.alb_sg.id
    ]

  }

  ingress {

    description = "SSH"

    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ec2-sg"
    }
  )

}