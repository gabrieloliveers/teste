resource "aws_s3_bucket" "trabalho_terraform" {
  bucket = "trabalho_terraform-25653746"

  tags = {
    Terraform   = "true"
    Environment = "prd"
  }
}

resource "aws_s3_bucket_acl" "trabalho_terraform" {
  bucket     = aws_s3_bucket.trabalho_terraform.id
  acl        = "private"
}

