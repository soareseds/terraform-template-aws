resource "aws_eip" "eip_server2" {
    instance = aws_instance.vm-server-2.id
    vpc = true
    tags = {
      "Name" = "eip-server2"
      "Nome do Ambiente" = "PoC template aws"
      "Tipo do Ambiente" = "Homol"
      "Descricao" = "Server-2 PoC template aws"
    }
}

resource "aws_eip" "eip_server3" {
    instance = aws_instance.vm-server-3.id
    vpc = true
    tags = {
      "Name" = "eip-server3"
      "Nome do Ambiente" = "PoC template aws"
      "Tipo do Ambiente" = "Homol"
      "Descricao" = "Server-3 PoC template aws"
    }
}

