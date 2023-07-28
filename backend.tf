terraform {
  backend "s3" {
    bucket = "my-example-bucket62"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "Dynamos3"
  }
}
