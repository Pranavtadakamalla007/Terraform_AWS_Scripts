output "lb_arn" {
  value       = aws_lb.one.arn
  description = "Load balancer arn"
}

output "lb_id" {
  value       = aws_lb.one.id
  description = "Load balancer id"
}

output "tg_arn" {
  value       = aws_lb_target_group.one.arn
  description = "Target group arn"
}




