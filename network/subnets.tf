resource "aws_subnet" "public_s1" {
  vpc_id                          = var.vpc_id
  cidr_block                      = var.network_public_subnet_1_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet_1"
  }
}

resource "aws_subnet" "public_s2" {
  vpc_id                          = var.vpc_id
  cidr_block                      = var.network_public_subnet_2_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet_1"
  }
}

resource "aws_subnet" "private_s1" {
  vpc_id                          = var.vpc_id
  cidr_block                      = var.network_private_subnet_1_cidr

  tags = {
    Name = "Private Subnet_1"
  }
}

resource "aws_subnet" "private_s2" {
  vpc_id                          = var.vpc_id
  cidr_block                      = var.network_private_subnet_2_cidr
 

  tags = {
    Name = "Private Subnet_2"
  }
}

