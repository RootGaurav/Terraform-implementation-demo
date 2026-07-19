resource "aws_db_instance" "mysql" {

  count = var.instance_count

  identifier = "mysql-${var.environment}-${count.index + 1}"

  engine = "mysql"

  engine_version = "8.0"

  instance_class = "db.t3.micro"

  allocated_storage = 20

  username = "admin"

  password = "Password123!"

  skip_final_snapshot = true

}