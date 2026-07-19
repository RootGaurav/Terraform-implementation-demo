# ============================================================
# Elastic IP for NAT Gateway
# ============================================================

resource "aws_eip" "nat" {

  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat-eip"
    }
  )

}

# ============================================================
# NAT Gateway
# ============================================================

resource "aws_nat_gateway" "main" {

  allocation_id = aws_eip.nat.id

  subnet_id = aws_subnet.public_subnet_1.id

  depends_on = [
    aws_internet_gateway.main
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat"
    }
  )

}