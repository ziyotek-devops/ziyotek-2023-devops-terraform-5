resource "aws_instance" "new_ec2_boris" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t3.micro"
  monitoring    = true
  ebs_optimized     = true
  tags = {
    Name        = "My-instance"
    Environment = "test"
    Project     = "my-project"
  }
  
  subnet_id         = aws_subnet.private_subnets[1].id
  //availability_zone = "us-east-1a"
  
}
resource "aws_security_group" "my_instance" {
  name        = "my_new-security-group"
  description = "Allow ingress traffic on port 443"
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}