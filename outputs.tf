output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "route_table_id" {
  value = aws_route_table.public.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "ec2_instance_id" {
  value = aws_instance.web.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.data.id
}
