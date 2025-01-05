provider "aws" {
  region = "ap-south-1" # Specify the AWS region
}

resource "aws_s3_bucket" "example" {
  bucket = "nareshit-terraform-12345" # Name of the S3 bucket
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock-dynamo" # Name of the DynamoDB table
  hash_key       = "LockID"
  billing_mode   = "PROVISIONED" # Explicitly specify billing mode
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
