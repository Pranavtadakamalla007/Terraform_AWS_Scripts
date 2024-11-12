provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./Modules/VPC"
}

module "sg" {
  source = "./Modules/Security group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source     = "./Modules/EC2"
  subnet_ids = module.vpc.subnet_ids
  sg_ids     = module.sg.Sg_id
}





