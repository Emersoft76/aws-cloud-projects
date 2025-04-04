# ⚖️ Projeto 4 – Auto Scaling com Application Load Balancer (ALB)

## 🇬🇧 Description  
This project automates the deployment of an EC2-based web environment with scalability and high availability.  
It includes:  
- A custom VPC  
- Public subnets  
- Security Group with HTTP access  
- Launch Template with Apache  
- Auto Scaling Group (2 EC2 instances)  
- Application Load Balancer (ALB)

The goal is to simulate a real-world infrastructure that can handle traffic peaks efficiently.

## 🇧🇷 Descrição  
Este projeto automatiza o deploy de um ambiente web baseado em EC2 com escalabilidade e alta disponibilidade.  
Inclui:  
- Uma VPC personalizada  
- Subnets públicas  
- Security Group com acesso HTTP  
- Launch Template com Apache  
- Auto Scaling Group (2 instâncias EC2)  
- Application Load Balancer (ALB)

O objetivo é simular uma infraestrutura real capaz de lidar com picos de tráfego com eficiência.

---

## 🛠️ Serviços AWS Utilizados | AWS Services Used  
- EC2  
- Launch Template  
- Auto Scaling Group  
- Application Load Balancer (ALB)  
- VPC  
- Security Groups  
- Subnets  
- Route Tables  
- Terraform

---

## ✅ Resultado Esperado | Expected Result  
- Infraestrutura com balanceamento de carga e escalabilidade automática  
- Ambientes replicáveis e seguros para aplicações web públicas

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

projeto4-autoscaling-alb/
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
