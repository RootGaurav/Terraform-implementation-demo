# ============================================================
# VPC
# ============================================================

output "vpc_id" {
  value = aws_vpc.main.id
}

# ============================================================
# Public Subnets
# ============================================================

output "public_subnet_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_subnet_2.id
}

# ============================================================
# Load Balancer
# ============================================================

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}

output "alb_arn" {
  value = aws_lb.main.arn
}

# ============================================================
# Target Group
# ============================================================

output "target_group_arn" {
  value = aws_lb_target_group.main.arn
}

# ============================================================
# EC2
# ============================================================

output "instance_id" {
  value = aws_instance.nginx.id
}

output "public_ip" {
  value = aws_instance.nginx.public_ip
}