# This section passes the variables that need by the module to run
# This variables comes from the outside the module 
# Thsi variables are assinged when calling the module

variable "network_public_subnet_1_cidr" {
    type = string
}

variable "network_public_subnet_2_cidr" {
    type = string
}

variable "network_private_subnet_1_cidr" {
    type = string
}

variable "network_private_subnet_2_cidr" {
    type = string
}
variable "vpc_id" {
    type = string
}