# 🛠️ Projeto 5 – Lambda + API Gateway + DynamoDB (Serverless)

## 🇬🇧 Description
This project creates a modern serverless architecture using Terraform, including:

- An AWS Lambda function (Node.js)
- An HTTP API using API Gateway
- A DynamoDB table to store data
- IAM Role for secure Lambda execution
- Infrastructure as code (IaC) with Terraform

The goal is to simulate a lightweight, scalable, and cost-effective backend API.

## 🇧🇷 Descrição
Este projeto cria uma arquitetura serverless moderna utilizando Terraform, incluindo:

- Uma função AWS Lambda (Node.js)
- Uma API HTTP via API Gateway
- Uma tabela DynamoDB para armazenar dados
- Uma Role IAM para execução segura da Lambda
- Infraestrutura como código (IaC) com Terraform

O objetivo é simular uma API backend leve, escalável e de baixo custo.

---

## 🛠️ AWS Services Used | Serviços Utilizados

- Lambda
- API Gateway (HTTP)
- DynamoDB
- IAM
- Terraform

---

## 📂 Estrutura

projeto5-lambda-apigateway-dynamodb/ ├── lambda/ │ └── index.js ├── lambda.zip ├── terraform/ │ ├── main.tf │ ├── variables.tf │ └── outputs.tf └── README.md

---

##▶️ Execução

**1. Configure suas credenciais AWS via AWS CLI:**
```bash
aws configure