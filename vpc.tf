
# #Create the VPC
#  resource "aws_vpc" "Main" {         
#     tags = {
#         Name = "my-tf-vpc"
#     }       
#    cidr_block       = var.main_vpc_cidr     
#    instance_tenancy = "default"
#  }

# # Create Internet Gateway and attach it to VPC
#  resource "aws_internet_gateway" "IGW" {   
#     tags = {
#         Name = "my-tf-gateway"
#     }
#     vpc_id =  aws_vpc.Main.id               
#  }

# # Create a Public Subnets.
#  resource "aws_subnet" "publicsubnets" {   
#     tags = {
#         Name = "my-tf-public-subnet"
#     } 
#    vpc_id =  aws_vpc.Main.id
#    cidr_block = var.public_subnets 
#    availability_zone = lookup(var.aws_availability_zone,var.infrastructure)
    
#  }

#  #Create a Private Subnet                   
#  resource "aws_subnet" "privatesubnets" {
#       tags = {
#         Name = "my-tf-private-subnet"
#     } 
#      vpc_id =  aws_vpc.Main.id
#      cidr_block = var.private_subnets  
#      availability_zone = lookup(var.aws_availability_zone,var.infrastructure)
        
#  }

# # Route table for Public Subnet's
#  resource "aws_route_table" "PublicRT" {   
#     tags = {
#          Name = "my-tf-public-routetable"
#     } 
#     vpc_id =  aws_vpc.Main.id
#     route {
#          cidr_block = "0.0.0.0/0"               
#          gateway_id = aws_internet_gateway.IGW.id
#     }
# }

#  #Route table for Private Subnet's
#  resource "aws_route_table" "PrivateRT" {   
#     tags = {
#          Name = "my-tf-private-routetable"
#     }  
#    vpc_id = aws_vpc.Main.id
# #    route {
# #         cidr_block = "0.0.0.0/0"           
# #         nat_gateway_id = 
# #    }
#  }

# # Route table Association with Public Subnet's
#  resource "aws_route_table_association" "PublicRTassociation" {
#     subnet_id = aws_subnet.publicsubnets.id
#     route_table_id = aws_route_table.PublicRT.id
#  }

# # Route table Association with Private Subnet's
#  resource "aws_route_table_association" "PrivateRTassociation" {
#     subnet_id = aws_subnet.privatesubnets.id
#     route_table_id = aws_route_table.PrivateRT.id
#  }



