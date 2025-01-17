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

resource "aws_instance" "DemoWorkspace" {
  ami           = var.ami_value_Module
  instance_type = var.instance_type_value_Module
  tags = {
    Name = var.instance_name_value_Module # Assigning the name tag from a variable
  }
}
