resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.VPC_test.vpc_id
  overwrite = true
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project}/${var.environment}/public_subnet_ids"
  type  = "String"
  value = join(",", module.VPC_test.public_subnet_ids)
  overwrite = true
}
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project}/${var.environment}/private_subnet_ids"
  type  = "String"
  value = join(",", module.VPC_test.private_subnet_ids)
  overwrite = true
}
resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project}/${var.environment}/database_subnet_ids"
  type  = "String"
  value = join(",", module.VPC_test.database_subnet_ids)
  overwrite = true
}