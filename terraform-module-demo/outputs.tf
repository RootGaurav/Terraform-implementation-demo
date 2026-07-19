# ============================================================
# EC2 Instance ID
# ============================================================

output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.instance_id
}

# ============================================================
# EC2 Public IP
# ============================================================

output "public_ip" {
  description = "EC2 Public IP"
  value       = module.ec2.public_ip
}

# ============================================================
# IAM Role Name
# ============================================================

output "iam_role_name" {
  description = "IAM Role attached to EC2"
  value       = module.ec2.iam_role
}