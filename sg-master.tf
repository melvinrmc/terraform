resource "aws_security_group" "allow_k8s_master" {
  name        = "allow_k8s_master"
  description = "Allow k8s inbound required ports traffic"
  vpc_id      = "vpc-a5f829c1"

  ingress {
    # Kubernetes API server
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    # etcd server client API
    from_port   = 2379
    to_port     = 2380
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  
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
    # kube-scheduler
    from_port   = 10251
    to_port     = 10251
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    # kube-controller-manager
    from_port   = 10252
    to_port     = 10252
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}
