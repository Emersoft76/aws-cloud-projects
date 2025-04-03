# 🖥️ Projeto 3 – EC2 com VPC e Security Group

## 🇬🇧 Description  
This project provisions an EC2 instance inside a custom VPC using Terraform.  
It includes:  
- A VPC  
- A public subnet  
- A Security Group with SSH and HTTP access  
- An EC2 instance with a public IP

This setup is ideal for testing simple public instances in a controlled and secure environment.

## 🇧🇷 Descrição  
Este projeto provisiona uma instância EC2 dentro de uma VPC personalizada usando Terraform.  
Ele inclui:  
- Uma VPC  
- Uma subnet pública  
- Um Security Group com acesso SSH e HTTP  
- Uma instância EC2 com IP público

Essa configuração é ideal para testes com instâncias públicas simples em um ambiente controlado e seguro.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used  
- VPC  
- Subnet  
- Security Group  
- EC2  
- Terraform

---

## ✅ Resultado Esperado | Expected Result  
- Uma instância EC2 pública acessível via SSH e HTTP  
- Rede personalizada com segurança configurada

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

📁 Estrutura do Projeto | Project Structure

projeto3-ec2-vpc-sg/
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