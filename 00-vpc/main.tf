module "VPC_test" {
#source = "../terraform-aws-vpc"
source = "git::https://github.com/VasarlaSravanthi/terraform-aws-vpc.git"
project = var.project
environment = var.environment
is_peering_required = false
}