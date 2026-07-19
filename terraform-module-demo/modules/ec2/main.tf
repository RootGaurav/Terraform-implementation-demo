resource "aws_iam_role" "ec2_role" {

  name = "${var.project_name}-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Principal = {

          Service = "ec2.amazonaws.com"

        }

        Action = "sts:AssumeRole"

      }

    ]

  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-role"
    }
  )

}

resource "aws_iam_policy" "custom_policy" {

  name = "${var.project_name}-policy"

  policy = var.iam_policy

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-policy"
    }
  )

}
resource "aws_iam_role_policy_attachment" "attach" {

  role = aws_iam_role.ec2_role.name

  policy_arn = aws_iam_policy.custom_policy.arn

}

resource "aws_iam_instance_profile" "profile" {

  name = "${var.project_name}-profile"

  role = aws_iam_role.ec2_role.name

}

resource "aws_instance" "this" {

  ami           = var.ami_id
  instance_type = var.instance_type


  iam_instance_profile = aws_iam_instance_profile.profile.name

  user_data = var.user_data

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ec2"
    }
  )

}

