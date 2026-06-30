terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.48.0"
    }
  }
 backend "s3" {
    bucket = "devops-s3-sr" #s3 bucket name
    key    = "roboshop-bastion.tfstate" # state file name
    region = "us-east-1"
    use_lockfile = true # enables state file lock
    encrypt = true
  } 
}

  

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}