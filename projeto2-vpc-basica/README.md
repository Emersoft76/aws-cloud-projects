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

---

## 📂 Estrutura

projeto2-vpc-basica/ ├── terraform/ │ ├── main.tf │ ├── variables.tf │ └── outputs.tf └── 

---

## ▶️ Execução

**1. Configure suas credenciais AWS via AWS CLI:**
```bash
aws configure 
