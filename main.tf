provider "aws" {
  region = "us-east-1"
}
 
resource "aws_instance" "master" {
  ami = "ami-02eac2c0129f6376b"
  instance_type = "t2.medium"
  key_name = aws_key_pair.deployer.key_name
  security_groups = [  aws_security_group.allow_ssh.name
                     , aws_security_group.allow_k8s_master.name
                    ]
}

variable "MY_ID_RSA" {
  type = string  
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.MY_ID_RSA
}
