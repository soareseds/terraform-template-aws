resource "aws_vpc" "aws-poc-vpc" {
  cidr_block           = "10.34.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "vpc-poc-aws-template"
    "Nome do Ambiente" = "PoC template aws"
    "Tipo do Ambiente" = "Homol"
    "Descricao" = "VPC PoC template aws"
    }
}