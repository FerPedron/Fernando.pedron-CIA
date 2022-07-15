provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "/home/fernando/.aws/credentials"
  profile = "default"
}

module "server" {
  source          = "./modules/Ec2"
  inst_ami        = "ami-01d025118d8e760db"
  inst_type       = "t2.micro"
  inst_key     = "Fernando"
  tags = {"Name" = "lab-terraform-tst", "Ambiente" = "Desenvolvimento"}
}