resource "aws_instance" "my_instance" {
  ami           = "ami-0f9ce67dcf718d332"
  instance_type = "t2.micro"
  count=5 
  key_name      = "kp1"
  vpc_security_group_ids = ["sg-03fcc86e71629b1cb"]
  subnet_id     = "subnet-0c0ab16ad88c499ba"
  tags= {
  Name: "Terraform2"
}
}