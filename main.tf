
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MyVPC63"
  }
}


resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "sub63"
  }
}


resource "aws_instance" "example456" {
  ami           = "ami-0f9ce67dcf718d332"  
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id
}


resource "aws_s3_bucket" "example567" {
  bucket = "my-example-bucket62"  # Replace with your desired bucket name
  acl    = "private"

   versioning {
     enabled = true
   }
}
