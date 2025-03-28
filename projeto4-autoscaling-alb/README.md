# ⚖️ Projeto 4 – Auto Scaling + ALB com Terraform

## 🇬🇧 Description
This project provisions an autoscaling infrastructure with Terraform, using:

- A custom VPC
- Two public subnets
- Internet Gateway and public Route Table
- Security Group with HTTP access (port 80)
- Launch Template for EC2 with Apache web server
- Auto Scaling Group (min 1, max 3, desired 2)
- Application Load Balancer (ALB) distributing traffic

The goal is to simulate a scalable, highly available web application setup.

## 🇧🇷 Descrição
Este projeto provisiona uma infraestrutura escalável com Terraform, utilizando:

- Uma VPC personalizada
- Duas subnets públicas
- Internet Gateway e Tabela de Rotas pública
- Security Group liberando acesso HTTP (porta 80)
- Launch Template com servidor Apache para EC2
- Auto Scaling Group (mín 1, máx 3, desejado 2)
- Application Load Balancer (ALB) distribuindo o tráfego

O objetivo é simular um ambiente escalável e altamente disponível para aplicações web.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used

- VPC
- EC2
- Auto Scaling Group
- Launch Template
- Application Load Balancer
- Subnets, IGW, Route Table
- Security Group

---

## 📂 Estrutura

projeto4-autoscaling-alb/ ├── terraform/ │ ├── main.tf │ ├── variables.tf │ └── outputs.tf └── README.md

---

## ▶️ Execução

**1. Configure suas credenciais AWS via AWS CLI:**
```bash
aws configure
