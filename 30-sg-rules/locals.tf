locals {
  backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
  #public_subnets_ids = data.aws_ssm_parameter.public_subnets_ids.value
}