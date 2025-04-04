# 🌍 Projeto 6 – Site Estático com S3, CloudFront e HTTPS

## 🇬🇧 Description  
This project deploys a static website on AWS using S3 and CloudFront with HTTPS support.  
It includes:  
- An S3 bucket to host static files  
- A CloudFront distribution for content delivery  
- HTTPS using a default CloudFront certificate  
- Bucket policy and access configuration  
- Terraform automation

Great for hosting landing pages, portfolios, or documentation sites in a fast and secure way.

## 🇧🇷 Descrição  
Este projeto publica um site estático na AWS utilizando S3 e CloudFront com suporte a HTTPS.  
Inclui:  
- Um bucket S3 para hospedar arquivos estáticos  
- Uma distribuição CloudFront para entrega de conteúdo  
- HTTPS utilizando certificado padrão da CloudFront  
- Política de acesso do bucket  
- Automação com Terraform

Ideal para hospedar landing pages, portfólios ou sites de documentação de forma rápida e segura.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used  
- Amazon S3  
- Amazon CloudFront  
- Bucket Policies  
- Terraform

---

## ✅ Resultado Esperado | Expected Result  
- Site estático acessível via HTTPS com distribuição global  
- Infraestrutura segura e escalável criada via código

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

4. Acesse o domínio gerado pela distribuição CloudFront para visualizar o site.

---

📁 Estrutura do Projeto | Project Structure

projeto6-s3-cloudfront-https/
├── site/
│   └── index.html
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
