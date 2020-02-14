resource "aws_security_group" "allow_k8s_node" {
  name        = "allow_k8s_node"
  description = "Allow k8s inbound required ports traffic"
  vpc_id      = "vpc-a5f829c1"

  ingress {
    # Kubelet API
    from_port   = 10250
    to_port     = 10250
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    # NodePort Services
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }  
}
