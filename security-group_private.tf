resource "aws_security_group" "sg-servers-template" {
    name        = "SG_servers-template"
    description = "SG_servers-template"
    vpc_id      = aws_vpc.aws-poc-vpc.id
}

resource "aws_security_group_rule" "sg-rules" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = aws_security_group.sg-servers-template.id
  security_group_id = aws_security_group.sg-servers-template.id
}

resource "aws_security_group_rule" "allow_all" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  security_group_id = aws_security_group.sg-servers-template.id
}

resource "aws_security_group_rule" "sg-rules-public" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = aws_security_group.sg-servers-template-public.id
  security_group_id = aws_security_group.sg-servers-template.id
}