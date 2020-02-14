resource "aws_instance" "node1" {
  ami = "ami-02eac2c0129f6376b"
  instance_type = "t2.medium"
  key_name = aws_key_pair.deployer.key_name
  security_groups = [ aws_security_group.allow_ssh.name
                     ,aws_security_group.allow_k8s_node.name
                    ]
}
