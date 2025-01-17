terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_intances" {
  source           = "./modules/ec2_instances"
  ami_value_Module = var.ami_value_Main
  # Dynamic value for instance type based on workspace
  instance_type_value_Module = lookup(var.instance_type_value_Main, terraform.workspace, "t2.micro")
  instance_name_value_Module = var.instance_name_value_Main
}
