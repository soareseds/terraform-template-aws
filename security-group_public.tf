resource "aws_security_group" "sg-servers-template-public" {
    name        = "SG_servers-template-public"
    description = "SG_servers-template-public"
    vpc_id      = aws_vpc.aws-poc-vpc.id
}

resource "aws_security_group_rule" "sg-rules-public-self1" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = aws_security_group.sg-servers-template-public.id
  security_group_id = aws_security_group.sg-servers-template-public.id
}

resource "aws_security_group_rule" "sg-rules-public-self2" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = aws_security_group.sg-servers-template.id
  security_group_id = aws_security_group.sg-servers-template-public.id
}

resource "aws_security_group_rule" "allow_all-public" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  security_group_id = aws_security_group.sg-servers-template-public.id
}

resource "aws_security_group_rule" "sg-rules-rdp-public" {
    type             = "ingress"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["138.94.66.0/24"]
    description      = "IP-Edson"
    security_group_id = aws_security_group.sg-servers-template-public.id
  }
