resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.internet_getway.id
}

resource "aws_route_table_association" "public_route_table_associatio_1" {
  subnet_id      = aws_subnet.public_s1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_table_associatio_2" {
  subnet_id      = aws_subnet.public_s2.id
  route_table_id = aws_route_table.public_route_table.id
}


##################################################


resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id

}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_getway.id
}

resource "aws_route_table_association" "private_route_table_association_1" {
  subnet_id      = aws_subnet.private_s1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_table_association_2" {
  subnet_id      = aws_subnet.private_s2.id
  route_table_id = aws_route_table.private_route_table.id
}