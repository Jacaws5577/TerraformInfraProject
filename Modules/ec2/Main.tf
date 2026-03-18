resource "aws_instance" "MyTerraInstance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.instance_count

  tags = {
    Name  = "${var.name != "" ? var.name : "MyTerraInstance"}"
    Environment = var.environment
  }
}