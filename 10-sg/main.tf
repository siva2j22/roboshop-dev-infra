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
    #source = "git::https://github.com/daws-86s/terraform-aws-sg.git?ref=main"
    source = "git::https://github.com/siva2j22/terraform-aws-sg.git?ref=main"
    project_name =var.project_name
    environment = var.environment
    sg_name = var.sg_names[count.index]
    sg_description = "created for ${var.sg_names[count.index]}"
    vpc_id = local.vpc_id
}


# Frontend accepting traffic from frontend ALB
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   type              = "ingress"
#   security_group_id = module.sg[9].sg_id # frontend SG ID
#   source_security_group_id = module.sg[11].sg_id # frontend ALB SG ID
#   from_port         = 80
#   protocol          = "tcp"
#   to_port           = 80
# }
