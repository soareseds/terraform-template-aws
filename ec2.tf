resource "aws_instance" "vm-server-2" {
    ami = "ami-0e6a2f1d807de5d97"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet-1a.id
    associate_public_ip_address = "true"
    key_name = aws_key_pair.aws-template-server-1-key.key_name
    vpc_security_group_ids = [aws_security_group.sg-servers-template-public.id]
    iam_instance_profile = aws_iam_instance_profile.s3_profile_servers_template.id
    root_block_device {
      volume_type = "gp3"
      volume_size = 100
    }
    tags = {
      "Name" = "vm-server-2"
      "Nome do Ambiente" = "PoC template aws"
      "Tipo do Ambiente" = "Homol"
      "Descricao" = "Server-2 PoC template aws"
    }
}

resource "aws_instance" "vm-server-3" {
    ami = "ami-0e6a2f1d807de5d97"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet-1a.id
    associate_public_ip_address = "true"
    key_name = aws_key_pair.aws-template-server-1-key.key_name
    vpc_security_group_ids = [aws_security_group.sg-servers-template-public.id]
    iam_instance_profile = aws_iam_instance_profile.s3_profile_servers_template.id
    root_block_device {
      volume_type = "gp3"
      volume_size = 100
    }
    tags = {
      "Name" = "vm-server-3"
      "Nome do Ambiente" = "PoC template aws"
      "Tipo do Ambiente" = "Homol"
      "Descricao" = "Server-3 PoC template aws"
    }
}
