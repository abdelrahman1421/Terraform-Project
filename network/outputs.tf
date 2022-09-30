# This sexction passes the variables from the module 


output "public_subnet_id_1" {
 value= aws_subnet.public_s1.id
}
output "public_subnet_id_2" {
 value= aws_subnet.public_s2.id
}

output "private_subnet_id_1" {
 value= aws_subnet.private_s1.id
}
output "private_subnet_id_2" {
 value= aws_subnet.private_s2.id
}

