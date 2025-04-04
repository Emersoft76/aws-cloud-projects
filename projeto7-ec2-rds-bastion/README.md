# 🛡️ Projeto 7 – EC2 com RDS e Bastion Host

## 🇬🇧 Description  
This project creates a secure backend infrastructure using Terraform.  
It includes:  
- A VPC with public and private subnets  
- A Bastion Host (EC2) in the public subnet  
- A backend EC2 instance in the private subnet  
- An RDS PostgreSQL database in isolated subnets  
- Security Groups to control access  
- SSH access via Bastion Host only

This setup mirrors real-world environments used for secure, production-ready applications.

## 🇧🇷 Descrição  
Este projeto cria uma infraestrutura de backend segura utilizando Terraform.  
Inclui:  
- Uma VPC com subnets públicas e privadas  
- Um Bastion Host (EC2) na subnet pública  
- Uma instância EC2 de aplicação na subnet privada  
- Um banco de dados RDS PostgreSQL em subnets isoladas  
- Security Groups para controle de acesso  
- Acesso SSH apenas via Bastion Host

Essa configuração reflete ambientes reais utilizados para aplicações seguras e prontas para produção.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used  
- EC2 (Bastion e App)  
- RDS PostgreSQL  
- VPC  
- Subnets públicas e privadas  
- Security Groups  
- Route Tables  
- Terraform

---

## ✅ Resultado Esperado | Expected Result  
- Infraestrutura segura e segmentada criada com Terraform  
- EC2 de aplicação comunicando com RDS via rede privada  
- Acesso controlado via Bastion Host

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

4. Acesse a instância privada via Bastion Host e valide a comunicação com o banco.

---

📁 Estrutura do Projeto | Project Structure

projeto7-ec2-rds-bastion/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── README.md

---

ℹ️ Nota Importante | Important Note

Todos os recursos são criados e removidos com os comandos terraform apply e terraform destroy, garantindo controle de custos e respeito aos limites do Free Tier da AWS.

Além disso, a gestão segura e eficiente dos recursos na nuvem é uma responsabilidade compartilhada com a AWS, cabendo ao usuário configurar, monitorar e manter suas aplicações com boas práticas.

All resources are created and destroyed using terraform apply and terraform destroy, ensuring cost control and adherence to AWS Free Tier limits.

Furthermore, secure and efficient cloud resource management is a shared responsibility with AWS, users are responsible for configuring, monitoring, and maintaining their workloads using best practices.
