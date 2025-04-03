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
3. Execute: `terraform init` e `terraform apply`   
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

cd terraform

terraform init
terraform apply

---

ℹ️ Nota Importante | Important Note

Todos os recursos são criados e removidos com os comandos terraform apply e terraform destroy, garantindo controle de custos e respeito aos limites do Free Tier da AWS.

Além disso, a gestão segura e eficiente dos recursos na nuvem é uma responsabilidade compartilhada com a AWS, cabendo ao usuário configurar, monitorar e manter suas aplicações com boas práticas.

All resources are created and destroyed using terraform apply and terraform destroy, ensuring cost control and adherence to AWS Free Tier limits.

Furthermore, secure and efficient cloud resource management is a shared responsibility with AWS, users are responsible for configuring, monitoring, and maintaining their workloads using best practices.
