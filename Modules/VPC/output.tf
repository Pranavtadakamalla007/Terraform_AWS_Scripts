output "vpc_id" {
  value       = { for k,v in aws_vpc.one : k => v.id }
  description = "vpc id"
}

output "subnet_ids" {
  value       = {for k,v in aws_subnet.one : k => v.id}
  description = "description"
}

output "name" {
  value       = {for k,v in aws_internet_gateway.one : k => v.id}
  description = "description"
}
