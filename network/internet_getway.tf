resource "aws_internet_gateway" "internet_getway" {
  vpc_id = var.vpc_id

  tags = {
    Name = "Internet Getway"
  }
}