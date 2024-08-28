resource "aws_instance" "test" {
  ami           = "ami-0a0e5d9c7acc336f1"  
  instance_type = "t2.micro"               

  tags = {
    Name = "test"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "mybucketforstatelocking" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}