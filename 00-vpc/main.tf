module "vpc" {
    #this source refer from local
    #source = "../terraform-aws-vpc" ref = main for specific branch we can mention
    source = "git::https://github.com/siva2j22/terraform-aws-vpc.git?ref=main"
    # vpc_cidr = "10.0.0.1/16"
    # project_name = "roboshop"
    # environment = "dev"
    
    # vpc
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    # public subnets
    public_subnets_cidrs = var.public_subnets_cidrs

    # private subnets
    private_subnets_cidrs = var.private_subnets_cidrs

    # private subnets
    database_subnets_cidrs = var.database_subnets_cidrs

    #peering false means no access to other vpc
    is_peering_required = true
}



#  data "aws_availability_zones" "available" {
#      state = "available"
# }

