provider "aws" {
  region = "eu-west-1"
}

# VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.20.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "projeto4-vpc"
  }
}

# Subnets públicas
resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.20.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "projeto4-subnet1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.20.2.0/24"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "projeto4-subnet2"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "projeto4-igw"
  }
}

# Route Table + associação
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "projeto4-rt"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public.id
}

# Security Group - libera HTTP
resource "aws_security_group" "web_sg" {
  name        = "projeto4-sg"
  description = "Liberar HTTP para ALB e EC2"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
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
    Name = "projeto4-sg"
  }
}

# ALB
resource "aws_lb" "web" {
  name               = "projeto4-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web_sg.id]
  subnets            = [aws_subnet.public1.id, aws_subnet.public2.id]
}

resource "aws_lb_target_group" "tg" {
  name     = "projeto4-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.web.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}

# Launch Template
resource "aws_launch_template" "web" {
  name_prefix   = "projeto4-lt"
  image_id      = data.aws_ssm_parameter.latest_amazon_linux.value
  instance_type = "t2.micro"
  key_name      = "aws-key-emersoft"

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.web_sg.id]
  }

  user_data = base64encode(<<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              echo "<h1>Projeto 4: Servidor Web em execução via Auto Scaling</h1>" > /var/www/html/index.html
              sudo systemctl start httpd
              sudo systemctl enable httpd
              EOF
  )
}

# Auto Scaling Group
resource "aws_autoscaling_group" "web_asg" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = [aws_subnet.public1.id, aws_subnet.public2.id]
  target_group_arns    = [aws_lb_target_group.tg.arn]
  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "projeto4-ec2-auto"
    propagate_at_launch = true
  }
}

# AMI Dinâmica
data "aws_ssm_parameter" "latest_amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

