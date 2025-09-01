output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "http_sg_id" {
  value = aws_security_group.http_sg.id
}
