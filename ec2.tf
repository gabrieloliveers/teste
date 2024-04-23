resource "aws_instance" "terraform_trabalho" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = module.vpc_teste.public_subnets[0]

  tags = {
    Name = "tf-terraform_trabalho"
  }
}