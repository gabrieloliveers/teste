module "vpc_teste" {
  source           = "registry.terraform.io/terraform-aws-modules/vpc/aws"
  version          = "5.1.1"
  name             = "teste"
  cidr             = "10.0.0.0/16"
  azs              = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets   = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway                     = false
  enable_dns_hostnames                   = true
  create_database_subnet_group           = true
  create_database_subnet_route_table     = true
  create_database_internet_gateway_route = true

  tags = {
    Terraform   = "true"
    Environment = "prd"
  }
}