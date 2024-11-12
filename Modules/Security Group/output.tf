output Sg_id {
  #value       = {for k,v in aws_security_group.one : k => v.id}
  value = aws_security_group.one["sg_1"].id
  description = "Security group id"
}

output sg_name {
  value       = {for k,v in aws_security_group.one : k => v.name}
  description = "description"
}
