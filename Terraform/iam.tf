resource "aws_iam_policy" "policy" {
  name        = "buzz_policy"
  path        = "/"
  description = "Policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
resource "aws_iam_role_policy_attachment" "SNS-attach" {
  role       = aws_iam_role.iam_for_lambda.name
  policy_arn = data.aws_iam_policy.role_sns.arn
}
resource "aws_iam_role_policy_attachment" "API-attach" {
  role       = aws_iam_role.iam_for_lambda.name
  policy_arn = data.aws_iam_policy.role_api.arn
}
