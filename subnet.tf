resource "aws_subnet" "public_subnet-1a" {
  vpc_id     = aws_vpc.aws-poc-vpc.id
  cidr_block = "10.34.1.0/24"
  tags = {
    "Name" = "sb-public-subnet"
    "Nome do Ambiente" = "PoC template aws"
    "Tipo do Ambiente" = "Homol"
    "Descricao" = "Subnet Public PoC template aws"
  }
}

resource "aws_subnet" "private_subnet-1a" {
  vpc_id     = aws_vpc.aws-poc-vpc.id
  cidr_block = "10.34.2.0/24"
  tags = {
    "Name" = "sb-private-subnet"
    "Nome do Ambiente" = "PoC template aws"
    "Tipo do Ambiente" = "Homol"
    "Descricao" = "Subnet Private PoC template aws"
  }
}

resource "aws_route_table_association" "tab-associ-sb-public" {
  subnet_id      = aws_subnet.public_subnet-1a.id
  route_table_id = aws_route_table.rt-public-subnet-1a.id
}

resource "aws_route_table_association" "tab-associ-sb-private" {
  subnet_id      = aws_subnet.private_subnet-1a.id
  route_table_id = aws_route_table.rt-private-subnet-1a.id
}