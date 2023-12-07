module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Johnwick-Subnets"
  cidr = "15.0.0.0/21"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["15.0.0.0/24", "15.0.1.0/24"]
  public_subnets  = ["15.0.2.0/23", "15.0.4.0/23"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
