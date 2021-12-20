resource "aws_route_table" "rt-public-subnet-1a" {
    vpc_id = aws_vpc.aws-poc-vpc.id

    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.ig-vpc-aws.id
    }
  tags = {
    "Name" = "rt-public-subnet"
    "Nome do Ambiente" = "PoC template aws"
  }
}

resource "aws_route_table" "rt-private-subnet-1a" {
    vpc_id = aws_vpc.aws-poc-vpc.id

    route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat-gat-vpc-aws.id
    }

  tags = {
    "Name" = "rt-private-subnet"
    "Nome do Ambiente" = "PoC template aws"
    "Tipo do Ambiente" = "Homol"
    "Descricao" = "Route Table PoC template aws"
  }
}
