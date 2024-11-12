output "instance_id" {
  value = { for k, v in aws_instance.one : k => v.id }
}

output "public_ip" {
  value = { for k, v in aws_instance.one : k => v.public_ip }
}