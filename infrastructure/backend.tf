terraform {

 backend "s3" {

  bucket         = "terraform-remote-state-bucket-demo0001452689"
  key            = "global/terraform.tfstate"
  region         = "us-east-2"
  dynamodb_table = "terraform-lock-table00154"
  encrypt        = true

 }

}