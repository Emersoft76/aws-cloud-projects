# 🌍 Projeto 6 – S3 Static Website + CloudFront + HTTPS

## 🇬🇧 Description
This project hosts a static website on AWS using:

- An S3 bucket configured for static site hosting
- A CloudFront distribution (CDN) to globally serve content
- HTTPS enabled via the default CloudFront SSL certificate
- Terraform for full infrastructure as code (IaC)

The goal is to deliver a secure, fast and scalable static site using modern AWS services.

## 🇧🇷 Descrição
Este projeto hospeda um site estático na AWS utilizando:

- Um bucket S3 configurado como site estático
- Uma distribuição CloudFront (CDN) para servir conteúdo globalmente
- HTTPS ativado via certificado SSL padrão da CloudFront
- Terraform para toda a infraestrutura como código (IaC)

O objetivo é entregar um site estático seguro, rápido e escalável com serviços modernos da AWS.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used

- S3
- CloudFront
- ACM (certificado padrão CloudFront)
- IAM
- Terraform

---

## 📂 Estrutura

projeto6-s3-cloudfront-https/ ├── site/ │ └── index.html ├── terraform/ │ ├── main.tf │ ├── variables.tf │ └── outputs.tf └── README.md

---

## ▶️ Execução

**1. Configure suas credenciais AWS via AWS CLI:**
```bash
aws configure