terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region = var.aws_region
}

# Calling the VPC_Module
module "terraform_vpc_hw2" {
  source = "./modules/vpc_module"
  vpc_cidr = "172.30.0.0/16"
  public_subnet1_cidr = "172.30.0.0/24"
  public_subnet2_cidr = "172.30.1.0/24"
  public_subnet3_cidr = "172.30.2.0/24"
  private_subnet1_cidr  = "172.30.3.0/24"
  private_subnet2_cidr  = "172.30.4.0/24"
  private_subnet3_cidr  = "172.30.5.0/24"
}

# Calling the Launch_Configuration_Module


# Calling the Autoscaling_Group_Module


# Calling the Security Group Module
module "terraform_sg_hw2" {
  source = "./modules/sg_module"
  terraform_vpc_id  = module.terraform_vpc_hw2.terraform_vpc_id
  name = "terraform_sg_hw"
  port = 8080
}
