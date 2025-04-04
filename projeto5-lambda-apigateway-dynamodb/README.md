# ⚙️ Projeto 5 – Lambda com API Gateway e DynamoDB

## 🇬🇧 Description  
This project demonstrates how to create a serverless REST API using AWS services and Terraform.  
It includes:  
- An AWS Lambda function (Node.js)  
- API Gateway for HTTP access  
- A DynamoDB table for persistent storage  
- Proper IAM roles and permissions  

This setup showcases how to run applications without provisioning or managing servers.

## 🇧🇷 Descrição  
Este projeto demonstra como criar uma API REST serverless utilizando serviços da AWS com Terraform.  
Inclui:  
- Uma função Lambda (Node.js)  
- API Gateway para acesso HTTP  
- Uma tabela DynamoDB para armazenamento persistente  
- IAM Roles e permissões apropriadas  

Essa configuração mostra como executar aplicações sem provisionar ou gerenciar servidores.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used  
- AWS Lambda  
- API Gateway  
- DynamoDB  
- IAM (Roles & Policies)  
- Terraform

---

## ✅ Resultado Esperado | Expected Result  
- Uma API REST serverless funcional  
- Lambda conectada ao DynamoDB via Terraform  
- Integração segura e prática de backend escalável

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

4. Teste a API usando o endpoint gerado pelo API Gateway.

---

📁 Estrutura do Projeto | Project Structure

projeto5-lambda-apigateway-dynamodb/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── lambda/
│   └── index.js
└── README.md

---

ℹ️ Nota Importante | Important Note

Todos os recursos são criados e removidos com os comandos terraform apply e terraform destroy, garantindo controle de custos e respeito aos limites do Free Tier da AWS.

Além disso, a gestão segura e eficiente dos recursos na nuvem é uma responsabilidade compartilhada com a AWS, cabendo ao usuário configurar, monitorar e manter suas aplicações com boas práticas.

All resources are created and destroyed using terraform apply and terraform destroy, ensuring cost control and adherence to AWS Free Tier limits.

Furthermore, secure and efficient cloud resource management is a shared responsibility with AWS, users are responsible for configuring, monitoring, and maintaining their workloads using best practices.
