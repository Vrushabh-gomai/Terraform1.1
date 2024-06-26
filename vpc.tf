# provider "aws" {
#   alias  = "primary"
#   region = "us-east-1"
# }

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"

#   tags = {
#     Name = "main-vpc"
#   }
# }


# resource "aws_subnet" "main" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "us-east-1a"


# }


# resource "aws_internet_gateway" "main" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "main-igw"
#   }
# }


# resource "aws_route_table" "main" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "main-rt"
#   }
# }

# resource "aws_route" "default_route" {
#   route_table_id         = aws_route_table.main.id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id             = aws_internet_gateway.main.id
# }


# resource "aws_route_table_association" "main" {
#   subnet_id      = aws_subnet.main.id
#   route_table_id = aws_route_table.main.id
# }



