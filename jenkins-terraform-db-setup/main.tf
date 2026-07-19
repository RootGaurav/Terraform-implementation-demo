module "mysql" {

  source = "./modules/mysql"

  count = var.mysql_enabled ? 1 : 0

  environment = var.environment

  instance_count = var.instance_count

}