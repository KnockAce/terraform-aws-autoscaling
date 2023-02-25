module "discovery" {
  source     = "git::github.com/Lowess/terraform-aws-discovery"
  aws_region = var.aws_region
  vpc_name   = var.vpc_name
  #   ec2_security_groups = var.ec2_security_groups
}
