variable iam_name {
  type        = string
  default     = "Terra-test-user"
  description = "Name of iam user"
}

variable iam_group {
  type        = string
  default     = "Terra-group"
  description = "Group name in iam"
}
 variable policy_arn {
   type        = string
   default     = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
   description = "Policy arn"
 }
 
