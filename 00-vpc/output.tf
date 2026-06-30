output "vpc_id" {
  value = module.VPC_test.vpc_id
}
output "public_subnet_ids" {
    value =  module.VPC_test.public_subnet_ids  
}
output "private_subnet_ids" {
    value =  module.VPC_test.private_subnet_ids  
}
output "database_subnet_ids" {
    value =  module.VPC_test.database_subnet_ids  
}