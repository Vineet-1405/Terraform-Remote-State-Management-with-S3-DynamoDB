resource "aws_s3_bucket" "terraform_state" {

  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = "Terraform-State"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {

  name         = var.dynamodb_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform-State-Lock"
  }
}