provider "aws" {
  region = "eu-west-1"
}

# 🔍 AMI dinâmica: busca a mais recente do Amazon Linux 2023 para x86_64
data "aws_ssm_parameter" "latest_amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "example" {
  ami           = data.aws_ssm_parameter.latest_amazon_linux.value
  instance_type = "t2.micro"
  key_name      = "aws-key-emersoft"

  tags = {
    Name = "terraform-ec2-instance"
  }
}

resource "aws_s3_bucket" "example" {
  bucket         = "projeto1-ec2-s3-bucket-exemplo-102412"
  force_destroy  = true
}

 
