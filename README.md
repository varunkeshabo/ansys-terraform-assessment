# Terraform VPC + EC2 Assessment

## Overview
This Terraform project provisions:
- A VPC (10.0.0.0/16)  
- 3 public and 3 private subnets across multiple AZs  
- Internet access only for public subnets  
- An EC2 instance in a public subnet, reachable on port 80 (nginx can be installed later)  

## Usage

terraform init
terraform validate
terraform plan
terraform apply
