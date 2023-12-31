resource "aws_instance" "my_instance" {
  ami           = "ami-0f9ce67dcf718d332"
  instance_type = "t3.medium"
  count=5 
  key_name      = "new-kp"
  vpc_security_group_ids = ["sg-00b034fdef97af84d"]
  subnet_id     = "subnet-0c0ab16ad88c499ba"
  tags= {
  Name: "Terra-jen"
}
}

resource "aws_s3_bucket" "example_bucket123" {
  bucket = "example-bucket63"  
  acl    = "private"

  versioning {
    enabled = true
  }


  tags = {
    Name = "Example S3 Bucket"
    
  }
}
