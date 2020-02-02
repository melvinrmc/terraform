provider "aws" {
  region = "us-east-1"
}
 
resource "aws_instance" "kaeptn-eichhorn" {
  ami = "ami-04b9e92b5572fa0d1"
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.allow_ssh.name]
}

variable "MY_ID_RSA" {
  type = string  
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.MY_ID_RSA
}
