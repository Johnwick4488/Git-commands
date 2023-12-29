module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Johnwick-Subnets"
  cidr = "172.0.0.0/21"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["172.0.0.0/24", "172.0.1.0/24"]
  public_subnets  = ["172.0.2.0/23", "172.0.4.0/23"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "test"
  }
}
