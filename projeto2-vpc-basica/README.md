# 🌐 Projeto 2 – VPC Básica com Subnets e Internet Gateway

## 🇬🇧 Description  
This project creates a basic network structure in AWS using Terraform. It provisions:  
- A custom VPC  
- Two public subnets in different availability zones  
- An Internet Gateway  
- A public Route Table associated with the subnets  

The goal is to simulate a real-world starting point for scalable, public-facing applications.

## 🇧🇷 Descrição  
Este projeto cria uma estrutura básica de rede na AWS utilizando Terraform. Ele provisiona:  
- Uma VPC personalizada  
- Duas subnets públicas em zonas de disponibilidade diferentes  
- Um Internet Gateway  
- Uma Tabela de Rotas pública associada às subnets  

O objetivo é simular um ponto de partida para aplicações escaláveis voltadas à internet.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used  
- VPC  
- Subnets  
- Internet Gateway  
- Route Tables  
- Terraform

---

## ✅ Resultado Esperado | Expected Result  
- Infraestrutura de rede criada com sucesso  
- Ambiente preparado para deploy de serviços públicos na AWS

---

## ▶️ Execução

**1. Configure o AWS CLI / Configure AWS CLI:**  
```bash
aws configure

cd terraform

terraform init  
terraform apply

---

📁 Estrutura do Projeto | Project Structure

projeto2-vpc-basica/
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