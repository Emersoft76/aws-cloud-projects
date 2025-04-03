# ☁️ Projeto 1 – EC2 + S3 com Terraform

## 🇬🇧 Description
This project demonstrates how to provision an EC2 instance and an S3 bucket using Terraform. It showcases basic infrastructure deployment, security groups, and cloud resource organization.

## 🇧🇷 Descrição
Este projeto demonstra como provisionar uma instância EC2 e um bucket S3 utilizando Terraform. Ele destaca a criação básica de infraestrutura, grupos de segurança e organização de recursos na nuvem.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used

- EC2 (Elastic Compute Cloud)
- S3 (Simple Storage Service)
- VPC (Virtual Private Cloud)
- Security Groups
- Terraform

---

## ✅ Resultado Esperado | Expected Result

- Uma instância EC2 criada
- Um bucket S3 provisionado automaticamente

---

## ▶️ Execução

**1. Configure o AWS CLI / Configure AWS CLI:**
```bash
aws configure

2. Acesse a pasta terraform:

cd terraform

3. Execute os comandos Terraform:

terraform init
terraform apply

---

📁 Estrutura | Structure

projeto1-ec2-s3/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── README.md

---

ℹ️ Nota Importante | Important Note

Todos os recursos são criados e removidos com os comandos terraform apply e terraform destroy, garantindo controle de custos e respeito aos limites do Free Tier da AWS.

Além disso, a gestão segura e eficiente dos recursos na nuvem é uma responsabilidade compartilhada com a AWS — cabendo ao usuário configurar, monitorar e manter suas aplicações com boas práticas.

All resources are created and destroyed using terraform apply and terraform destroy, ensuring cost control and adherence to AWS Free Tier limits.

Furthermore, secure and efficient cloud resource management is a shared responsibility with AWS — users are responsible for configuring, monitoring, and maintaining their workloads using best practices.