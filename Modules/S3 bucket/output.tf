output bucket_id {
  value       = aws_s3_bucket.one.id
  description = "S3 bucket id"
}

output bucket_arn {
  value       = aws_s3_bucket.one.arn
  description = "description"
}
