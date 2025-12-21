#to create open source module
# module "catalogue" {
#     source = "terraform-aws-modules/security-group/aws"

#     name = "${local.common_name_suffix}-catalogue"
#     use_name_prefix = false
#     description = "Security group for catalogue with custom ports within VPC, egress all trafic"
#     vpc_id = data.aws_ssm_parameter.vpc_id.value
# }



module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/siva2j22/terraform-aws-sg.git?ref=main"
    project_name =var.project_name
    environment = var.environment
    sg_name = var.sg_names[count.index]
    sg_description = "created for ${var.sg_names[count.index]}"
    vpc_id = local.vpc_id
}

