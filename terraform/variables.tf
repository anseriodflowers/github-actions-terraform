variable "instance_keypair" {
  description = "E2C instance keypair"
  type = string
  default = "terrformkey"
}

variable "instance_type" {
  description = "E2C instance type" 
  type = string
  default = "t2.micro"
}


variable "aws_region" {
  description = "AWS Region"
  type = string
  default = "us-east-1"
}


variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string) 
  default = ["t3.micro", "t2.micro"]
}

variable "instance_type_map" {
  description = "EC2 Instance Map Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "prod" = "t2.micro"
    "test" = "t2.large"
  }
}
