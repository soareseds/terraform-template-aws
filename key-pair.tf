resource "tls_private_key" "aws-template-server-1-key" {

algorithm = "RSA"
rsa_bits = 4096
}

resource "local_file" "aws-template-server-1-key" {

filename = "./aws-template-server-1-key.pem"
content = tls_private_key.aws-template-server-1-key.private_key_pem
}

resource "aws_key_pair" "aws-template-server-1-key" {

key_name = "aws-template-server-1-key"
public_key = tls_private_key.aws-template-server-1-key.public_key_openssh
}