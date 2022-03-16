resource "aws_nat_gateway" "devopsb22-nat" {
  allocation_id = aws_eip.eip-nat.id
  subnet_id     = var.public-subnet-1

  tags = {
    Name = "DevOpsB22-IGW"
  }
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [var.igw_depends_on]
}