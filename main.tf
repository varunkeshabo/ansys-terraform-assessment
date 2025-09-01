terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "ec2" {
  source                 = "./modules/ec2"
  subnet_id              = module.vpc.public_subnet_ids[0]
  vpc_security_group_ids = [module.vpc.http_sg_id]
  ami                    = var.ami
  instance_type          = var.instance_type
}
