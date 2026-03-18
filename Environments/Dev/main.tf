module "vpc" {
    source = "../../Modules/VPC" 
    cidr_block =  "10.0.0.0/16"
    subnet_cidr_block = "10.0.1.0/24"
    subnet_availability_zone = "ap-southeast-1a"
    environment = "Dev"
}

module "ec2" {
    source = "../../Modules/EC2"
    instance_type = "t2.micro"
    ami = "ami-0be9cb9f67c8dabd6"
    subnet_id = module.vpc.subnet_id
    instance_count = 1
    environment = "Dev"
    name = "Dev-EC2-Instance"
    tags = {
        Project = "TerraformDeployment"
        Environment = "Dev"
    }
}