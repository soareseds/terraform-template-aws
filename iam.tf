resource "aws_iam_user" "user_template_s3_full_access" {
    name = "user_template_s3_full_access"
}

resource "aws_iam_user_policy_attachment" "user_template_s3_full_access-attach" {
    user = aws_iam_user.user_template_s3_full_access.name
    policy_arn = aws_iam_policy.s3-fullAccess-template-poc.arn  
}

resource "aws_iam_access_key" "template_s3_full_access" {
  user = aws_iam_user.user_template_s3_full_access.name
}

output "access-key-user-template-id" {
    value = aws_iam_access_key.template_s3_full_access.id  
}

output "access-key-user-template-secret" {
    value = aws_iam_access_key.template_s3_full_access.secret
    sensitive = true  
}