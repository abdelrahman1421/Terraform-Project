# Calling modules and passing it's required values 
module "network" {
  source                        = "./network"
  network_public_subnet_1_cidr  = var.public_subnet_1_cidr
  network_public_subnet_2_cidr  = var.public_subnet_2_cidr
  network_private_subnet_1_cidr = var.private_subnet_1_cidr
  network_private_subnet_2_cidr = var.private_subnet_2_cidr
  vpc_id                        = aws_vpc.project_vpc.id

}