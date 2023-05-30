provider "aws" {
 region = "ap-northeast-1"
}

resource "aws_vpc" "main" {
 cidr_block = "10.0.1.0/24"
}

output "vpc" {
value = aws_vpc.main
}
data "aws_region" "reg" { }

output "awsreg" {
value = data.aws_region.reg
}

data "aws_availability_zones" "az" { 
 state = "available"
}

output "awsaz" {
value = data.aws_availability_zones.az.names[0]
}
data "aws_ami" "ec2" {
most_recent = true
owners = ["amazon"]

filter {
 name = "name"
 values = ["amzn2-ami-hvm*"]
}
}
/*
output "ami" {
value = data.aws_ami.ec2.id
}
*/
