resource "aws_instance" "web-server" {
  ami                    = "ami-0ce107ae7af2e92b5"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.vpc-1-public-subnet.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web-sg.id]

  associate_public_ip_address = true
  private_ip                  = "10.0.1.10"
  tags = {
    Name = "web-server"
  }
}
