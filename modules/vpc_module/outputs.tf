# Terraform Outputs, this is information that we want to export.
output "terraform_vpc_id" {
  value = aws_vpc.terraform-vpc.id
}
output "terraform-internet-gw_id" {
  value = aws_internet_gateway.terraform-internet-gw.id
}

output "terraform-public-route-table-1_id" {
  value = aws_route_table.terraform-public-route-table-1.id
}

output "terraform-public-subnet-1_id" {
  value = aws_subnet.terraform-public-subnet-1.id
}

output "terraform-eip-for-nat-gw_id" {
  value = aws_eip.terraform-eip-for-nat-gw.id
}

output "terraform-nat-gw_id" {
  value = aws_nat_gateway.terraform-nat-gw.id
}

output "terraform-private-route-table-1_id" {
  value = aws_route_table.terraform-private-route-table-1.id
}

output "terraform-private-subnet-1_id" {
  value = aws_subnet.terraform-private-subnet-1.id
}

