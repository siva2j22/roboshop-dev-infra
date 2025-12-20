module "vote_service_sg" {
    source = "terraform-aws-modules/security-group/aws"

    name = "${local.common_name_suffix}-catalogue"
    use_name_prefix = false
    description = "Security group for catalogue with custom ports within VPC, egress all trafic"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}