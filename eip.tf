resource "aws_eip" "eip-nat" {
  tags = {
    Name = "NAT-EIP"
  }
}