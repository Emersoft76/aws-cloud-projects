# 🚀 Projeto 1 – AWS EC2 + S3 com Terraform

## 📌 Descrição (PT)
Este projeto cria uma instância EC2 e um bucket S3 usando Terraform, demonstrando os fundamentos da infraestrutura como código (IaC) na AWS.

## 📌 Description (EN)
This project creates an EC2 instance and an S3 bucket using Terraform, demonstrating the fundamentals of Infrastructure as Code (IaC) on AWS.

## 🛠️ Serviços AWS utilizados | AWS Services Used
- EC2
- S3

## ⚙️ Tecnologias | Technologies
- Terraform
- AWS CLI

## ▶️ Como executar | How to run
1. Configure o AWS CLI com `aws configure`
2. Acesse a pasta `terraform`
3. Execute: 'terraform init terraform apply'
4. Confirme com `yes`

## ✅ Resultado Esperado
- Uma instância EC2 criada
- Um bucket S3 provisionado automaticamente

---

## 📂 Estrutura do Projeto

projeto1-ec2-s3/ ├── terraform/ │ ├── main.tf │ ├── variables.tf │ ├── outputs.tf └── README.md

---

**1. Configure o AWS CLI / Configure AWS CLI:**
```bash
aws configure
