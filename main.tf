provider "aws" {
  region = "us-east-1"
}
 
resource "aws_instance" "kaeptn-eichhorn" {
  ami = "ami-04b9e92b5572fa0d1"
  instance_type = "t2.micro"
}

variable "my_id_rsa" {
  type = string  
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.my_id_rsa
}
