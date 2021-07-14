resource "aws_iam_user" "user" {
  name               = var.role_name
}

resource "aws_iam_policy" "policy" {
  count       = var.create_policy ? 1 : 0
  name        = var.role_name
  description = "Policy Created for ${var.role_name} via Terraform Module"

  policy = var.policy

  tags = var.tags
}


