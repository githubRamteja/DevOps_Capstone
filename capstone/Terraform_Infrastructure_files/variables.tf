variable "region" {
  default = "us-east-1"
}


#S3 bucket name
variable "s3_bucket_name" {
  default = "psrteja-capstone-backend-tf"
}

#DynamoDB Table
variable "dynamodb_table_name" {
  default = "psrt_terraform_state"
}

