output iam_user_id {
  value       = aws_iam_user.one.id
  description = "id of iam user"
}

output iam_user_arn {
  value       = aws_iam_user.one.arn
  description = "Arn of iam user"
}

output iam_group_id {
  value       = aws_iam_group.one.id
  description = "id of iam group"
}

output iam_group_arn {
  value       = aws_iam_group.one.arn
  description = "arn of iam group"
}


