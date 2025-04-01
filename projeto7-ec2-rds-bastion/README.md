# 🔐 Projeto 7 – EC2 Privada com Bastion Host + RDS PostgreSQL

## 🇬🇧 Description
This project creates a secure, production-ready AWS environment using Terraform. It includes:

- A VPC with public and private subnets
- A Bastion Host (SSH jumpbox) in a public subnet
- An App EC2 instance in a private subnet
- A PostgreSQL RDS instance in private subnets
- Security Groups restricting access between layers
- Full infrastructure as code (IaC) using Terraform

## 🇧🇷 Descrição
Este projeto cria um ambiente seguro e preparado para produção na AWS utilizando Terraform. Ele inclui:

- Uma VPC com subnets públicas e privadas
- Um Bastion Host (ponto de acesso SSH) em subnet pública
- Uma instância EC2 privada para aplicação
- Um banco de dados PostgreSQL (RDS) em subnets privadas
- Grupos de segurança controlando o tráfego entre as camadas
- Toda a infraestrutura gerenciada como código (IaC) via Terraform

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used

- VPC
- EC2 (Bastion + App)
- RDS (PostgreSQL)
- Subnet Groups
- Security Groups
- Internet Gateway
- Terraform

---

## 📂 Estrutura

projeto7-ec2-rds-bastion/ ├── terraform/ │ ├── main.tf │ ├── variables.tf │ └── outputs.tf └── README.md

---

## ▶️ Execução

**1. Configure suas credenciais AWS via AWS CLI:**
```bash
aws configure