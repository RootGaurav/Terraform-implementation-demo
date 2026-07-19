# ============================================================
# VPC
# ============================================================

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

# ============================================================
# Public Subnets
# ============================================================

output "public_subnet_1_id" {
  description = "Public Subnet 1 ID"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  description = "Public Subnet 2 ID"
  value       = aws_subnet.public_subnet_2.id
}

# ============================================================
# Private Subnets
# ============================================================

output "private_subnet_1_id" {
  description = "Private Subnet 1 ID"
  value       = aws_subnet.private_subnet_1.id
}

output "private_subnet_2_id" {
  description = "Private Subnet 2 ID"
  value       = aws_subnet.private_subnet_2.id
}

# ============================================================
# Internet Gateway
# ============================================================

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.main.id
}

# ============================================================
# NAT Gateway
# ============================================================

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.main.id
}

# ============================================================
# Elastic IP
# ============================================================

output "nat_gateway_public_ip" {
  description = "Elastic IP of NAT Gateway"
  value       = aws_eip.nat.public_ip
}

# ============================================================
# Route Tables
# ============================================================

output "public_route_table_id" {
  description = "Public Route Table ID"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "Private Route Table ID"
  value       = aws_route_table.private.id
}

output "instance_ids" {

  value = aws_instance.nginx[*].id

}

output "public_ips" {

  value = aws_instance.nginx[*].public_ip

}

output "private_ips" {

  value = aws_instance.nginx[*].private_ip

}