module "ec2" {

  source = "./modules/ec2"

  project_name = var.project_name

  ami_id = var.ami_id

  instance_type = var.instance_type

  tags = var.tags

  # Read userdata from file
  user_data = file("${path.root}/userdata/install-nginx.sh")

  # Read IAM Policy from file
  iam_policy = file("${path.root}/policies/s3-policy.json")

}