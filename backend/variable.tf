variable "region" {
  default = "us-east-2"
}

variable "bucket_name" {
  default = "terraform-remote-state-bucket-demo0001452689"
}

variable "dynamodb_table" {
  default = "terraform-lock-table00154"
}