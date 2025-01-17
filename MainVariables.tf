variable "ami_value_Main" {
  description = "ami value"
}

variable "instance_type_value_Main" {
  description = "Instance Type Value"
  # map(string) is used to map the string value to the variable
  type = map(string)

  # Defualt values or instance types for the instances
  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.small"
    "prod"  = "t2.medium"
  }
}

variable "instance_name_value_Main" {
  description = "name of the instance"
}
