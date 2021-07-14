###########################
#    User 
###########################

output "created-iam-user-name" {
  value       = var.iam_user ? aws_iam_user.user.name : ""
  description = "Name of IAM user created."
}

output "created-iam-user-id" {
  value       = var.iam_user ? aws_iam_user.user.id : ""
  description = "ID of IAM user created."
}

output "created-iam-user-arn" {
  value       = var.iam_user ? aws_iam_user.user.arn : ""
  description = "Arn of IAM user created."
}

###########################
#    Policy ARN 
###########################

output "policy-arn" {
  value       = var.create_policy ? aws_iam_policy.policy.arn : var.existing_policy_arn
  description = "ARN of Policy Used."
}