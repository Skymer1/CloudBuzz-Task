data "aws_iam_policy" "role_api" {
  arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess"
}
data "aws_iam_policy" "role_sns" {
  arn = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
}
