provider "aws" {
  region = "eu-west-1"
}

# VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "projeto3-vpc"
  }
}

# Subnet pública
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "projeto3-subnet-public"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "projeto3-igw"
  }
}

# Tabela de rotas pública
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "projeto3-rt"
  }
}

# Associação da tabela de rotas
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Security Group - acesso SSH
resource "aws_security_group" "ssh" {
  name        = "projeto3-sg-ssh"
  description = "Permitir acesso SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "projeto3-ssh"
  }
}

# Instância EC2
resource "aws_instance" "web" {
  ami                    = data.aws_ssm_parameter.latest_amazon_linux.value
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  key_name               = "aws-key-emersoft"
  vpc_security_group_ids = [aws_security_group.ssh.id]

  tags = {
    Name = "projeto3-ec2"
  }
}

# AMI dinâmico (Amazon Linux 2023)
data "aws_ssm_parameter" "latest_amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}
 
