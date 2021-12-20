resource "aws_s3_bucket" "s3-aws-template-poc" {
  bucket = "aws-template-poc"
  acl = "private"

lifecycle_rule {
    id      = "ia_teir"
    enabled = true

    prefix = "ia_teir/"

  transition {
      days = 30
      storage_class = "STANDARD_IA" # or "ONEZONE_IA"
    }
    
  transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }  
  tags = {
      "Nome do Ambiente" = "PoC template aws"
      "Tipo do Ambiente" = "Homol"
      "Descricao" = "S3 PoC template aws"
    }
}

