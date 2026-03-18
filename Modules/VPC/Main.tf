resource "aws_vpc" "MyTerraVPC" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "${var.environment}-MyTerraVPC"
  }
}

resource "aws_subnet" "MyTerraSubnet" {
  vpc_id     = aws_vpc.MyTerraVPC.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.environment}-MyTerraSubnet"
  }
}
output "subnet_id" {
  description = "The ID of the created subnet."
  value       = aws_subnet.MyTerraSubnet.id
}