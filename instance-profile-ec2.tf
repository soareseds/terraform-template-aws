resource "aws_iam_instance_profile" "s3_profile_servers_template" {
  name = "s3_profile_servers_template"
  role = aws_iam_role.s3_role_template.name
}

resource "aws_iam_role" "s3_role_template" {
  name = "s3_role_template"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_policy" "s3-fullAccess-template-poc" {
  name        = "s3-fullAccess-template-poc"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "s3-fullAccess-template-policy-attach" {
  role       = aws_iam_role.s3_role_template.name
  policy_arn = aws_iam_policy.s3-fullAccess-template-poc.arn
}