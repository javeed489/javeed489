provider "aws" {
    region = "ap-south-1"
    access_key = ""
    secret_key = ""
  
}
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "Public_subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
}