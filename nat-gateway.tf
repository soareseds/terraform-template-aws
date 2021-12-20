resource "aws_eip" "eip-nat-gat" {
    tags = {
    "Name" = "eip-nat-gateway-aws"
    "Nome do Ambiente" = "PoC template aws"
    "Tipo do Ambiente" = "Homol"
    "Descricao" = "Public IP PoC template aws"
      }
    }

resource "aws_nat_gateway" "nat-gat-vpc-aws" {
    allocation_id = aws_eip.eip-nat-gat.id
    subnet_id     = aws_subnet.public_subnet-1a.id
    tags = {
      "Name" = "nat-gate-vpc-aws"
      "Nome do Ambiente" = "PoC template aws"
      "Tipo do Ambiente" = "Homol"
      "Descricao" = "Nat Gateway PoC template aws"
  }
}