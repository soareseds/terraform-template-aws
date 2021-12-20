resource "aws_internet_gateway" "ig-vpc-aws" {
  vpc_id = aws_vpc.aws-poc-vpc.id

  tags = {
    "Name" = "ig-vpc-aws"
    "Nome do Ambiente" = "PoC template aws"
    "Tipo do Ambiente" = "Homol"
    "Descricao" = "Internet Gateway PoC template aws"
  }
}