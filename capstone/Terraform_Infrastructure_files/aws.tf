#AWS module for creating S3 Backend to store terraform state files.
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.65.0"
    }
  }
  #Backend S3 section requires that the S3 bucket, dynamo DB table and the VPC are already created.
  #If not created, please comment out below section before using terraform workflow and uncomment below section adn re-run terraform workflow to create backend.
    backend "s3" {
      #s3 bucket created before.
      bucket = "psrteja-capstone-backend-tf"
      key    = "dc/s3/terraform.tfstate"
      region = "us-east-1"
      #DynamoDB created before.
      dynamodb_table = "psrt_terraform_state"
      encrypt        = true
    }
}
















