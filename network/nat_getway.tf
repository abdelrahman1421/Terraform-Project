resource "aws_eip" "elastic_ip" {
  tags = {
    Name = "Elastic IP"
  }
}

resource "aws_nat_gateway" "nat_getway" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.public_s1.id

  tags = {
    Name = "NAT Getway"
  }
}