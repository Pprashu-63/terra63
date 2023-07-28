resource "aws_instance" "my_instance" {
  ami           = "ami-05548f9cecf47b442"
  instance_type = "t3.medium"
  key_name      = "new-kp"
  vpc_security_group_ids = ["sg-00b034fdef97af84d"]
  subnet_id     = "subnet-0c0ab16ad88c499ba"
  tags= {
  Name: "Terra63s"
}
}

