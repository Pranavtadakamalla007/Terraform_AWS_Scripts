output arn {
  value       = aws_ecr_repository.one.arn
  description = "ARN of Repository"
}

output registry_id {
  value       = aws_ecr_repository.one.registry_id
  description = "Repo id"
}
output repo_url {
  value       = aws_ecr_repository.one.repository_url
  description = "Repo URL"
}
