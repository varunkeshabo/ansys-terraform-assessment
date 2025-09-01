output "vpc_id"
{
  value = module.vpc.vpc_id
}

output "public_subnet_ids"
{
  value = module.vpc.public_subnet_ids
}

output "ec2_instance_id"
{
  value = module.ec2.instance_id
}

output "ec2_public_ip"
{
  value = module.ec2.public_ip
}
