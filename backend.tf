terraform {
  backend "s3" {
    bucket = "mybucketforstatelocking"
    key    = "path/to/my/key"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
