resource "aws_iam_user_policy_attachment" "user-policy-attachment" {
  role       = aws_iam_user.user.name
  policy_arn = var.create_policy ? aws_iam_policy.policy[0].arn : var.existing_policy_arn

  depends_on = [aws_iam_user.user, aws_iam_policy.policy]
}