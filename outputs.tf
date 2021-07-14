###########################
#    User 
###########################

output "created-iam-user-name" {
  value       = aws_iam_user.user.name
  description = "Name of IAM user created."
}

output "created-iam-user-id" {
  value       = aws_iam_user.user.id
  description = "ID of IAM user created."
}

output "created-iam-user-arn" {
  value       = aws_iam_user.user.arn
  description = "Arn of IAM user created."
}

###########################
#    Policy ARN 
###########################

output "policy-arn" {
  value       = var.create_policy ? aws_iam_policy.policy[0].arn : var.existing_policy_arn
  description = "ARN of Policy Used."
}