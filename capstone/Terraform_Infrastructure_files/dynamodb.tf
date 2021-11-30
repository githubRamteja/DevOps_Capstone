# DynamoDB for backend
resource "aws_dynamodb_table" "psrteja-terraform-lock" {
  # Give unique name for dynamo table name and name should match DNS naming standard.
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID" #This key is important and helps lock the terraform state file so only one user can update tfstate file.
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB Terraform State Lock Table"
  }
}