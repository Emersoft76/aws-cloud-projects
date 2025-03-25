# 🚀 Projeto 1 – AWS EC2 + S3 com Terraform

## 📌 Descrição (PT)
Este projeto cria uma instância EC2 e um bucket S3 usando Terraform, demonstrando os fundamentos da infraestrutura como código (IaC) na AWS.

## 📌 Description (EN)
This project creates an EC2 instance and an S3 bucket using Terraform, demonstrating the fundamentals of Infrastructure as Code (IaC) on AWS.

## 🛠️ Serviços AWS utilizados | AWS Services Used
- EC2
- S3

## ⚙️ Tecnologias | Technologies
- Terraform
- AWS CLI

## ▶️ Como executar | How to run

**1. Configure o AWS CLI / Configure AWS CLI:**
```bash
aws configure


✅ Resultado Esperado | Expected Result
Instância EC2 criada automaticamente

Bucket S3 criado automaticamente

📂 Estrutura do Projeto | Project Structure
css
Copiar
Editar
projeto1-ec2-s3/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
└── README.md
yaml
Copiar
Editar

Salve e feche o arquivo.

---

## **⬆️ Etapa 5 – Commit e Push para o GitHub**

### **1. Volte para a raiz do repositório:**
```cmd
cd ..\..
2. Execute os comandos Git:
cmd
Copiar
Editar
git status
git add .
git commit -m "Projeto 1: EC2 + S3 com Terraform"
git push origin main
✅ Parabéns! Seu primeiro projeto AWS está publicado, documentado em dois idiomas e pronto para mostrar seu conhecimento técnico!


✅ Sim! Toda edição feita localmente pelo CMD (ou qualquer terminal Git), quando você executa o git push, será refletida na versão web do GitHub.

📌 Como funciona esse fluxo?
1️⃣ Você cria ou edita os arquivos localmente

No CMD, Bloco de Notas, VS Code etc.

2️⃣ Você usa os comandos Git para "registrar" essas mudanças:

bash
Copiar
Editar
git add .
git commit -m "Sua mensagem de commit"
3️⃣ Você envia (push) essas mudanças para o GitHub:

bash
Copiar
Editar
git push origin main
4️⃣ O GitHub web será atualizado imediatamente.

Os arquivos, pastas e histórico de commits aparecerão na interface do GitHub no navegador.

✅ Exemplo real:
Você criou README.md e preencheu em dois idiomas.

Usou git add ., git commit, git push.

Quando acessar seu repositório no GitHub (web), o arquivo estará lá, formatado corretamente em Markdown.

📌 Conclusão: Tudo o que você está criando pelo CMD está construindo sua presença técnica pública no GitHub.
É como um portfólio vivo, técnico e rastreável.

Se quiser, posso te mostrar como deixar esse visual do projeto mais atrativo na web também (ex: imagens no README, badges, links externos). Deseja isso?







Dito por si:
Então não preciso realizar nenhuma operação, após criar o projeto via CMD, para subir o projeto para o GitHub web, certo?!


Dito pelo ChatGPT:
Quase certo! Você precisa sim realizar uma pequena operação final no CMD para que o projeto criado localmente seja enviado (ou “subido”) para o GitHub web.

📌 Depois de criar/editar o projeto localmente, você precisa executar:
1. Adicionar as mudanças ao Git
bash
Copiar
Editar
git add .
2. Fazer um commit (registrar a alteração)
bash
Copiar
Editar
git commit -m "Projeto 1: EC2 + S3 com Terraform"
3. Enviar (push) para o GitHub
bash
Copiar
Editar
git push origin main
✅ Depois disso, tudo aparecerá no GitHub Web!
Se você pular esses comandos, o projeto continuará apenas local, e não será visível online.

🔁 Resumo Visual: Fluxo do Git
pgsql
Copiar
Editar
Criar/Edita (local)
   ↓
git add .
   ↓
git commit -m "mensagem"
   ↓
git push origin main
   ↓
Projeto atualizado no GitHub Web!
✅ Agora que você criou o projeto via CMD, só falta executar esse trio de comandos para que ele vá para o GitHub. Me avisa quando quiser fazer isso, que eu te acompanho passo a passo!


Perfeito! 🚀 Agora que o primeiro projeto foi criado com sucesso, vamos subir ele para o GitHub, dentro do seu repositório aws-cloud-projects.

Aqui vai o passo a passo completo e bem explicado para você fazer isso com segurança.

✅ 📂 Etapa 1 – Vá até a raiz do repositório
Abra o terminal (CMD) e vá até o repositório local onde está o projeto:

cmd
Copiar
Editar
cd C:\Users\seu-nome\caminho\para\aws-cloud-projects
✅ 📌 Etapa 2 – Verifique o status do Git
bash
Copiar
Editar
git status
Isso mostrará os arquivos que foram adicionados, modificados ou ainda não rastreados.

✅ 📌 Etapa 3 – Adicione todos os arquivos
bash
Copiar
Editar
git add .
(O ponto adiciona todos os arquivos e subpastas.)

✅ 📌 Etapa 4 – Faça o commit
bash
Copiar
Editar
git commit -m "Projeto 1: EC2 + S3 com Terraform"
(O commit cria um registro das alterações feitas.)

✅ 📌 Etapa 5 – Envie os arquivos para o GitHub (push)
bash
Copiar
Editar
git push origin main
Isso vai subir seu projeto do seu computador para a versão web do repositório no GitHub.

📌 Resultado:
Agora, se você acessar seu repositório aws-cloud-projects no navegador, verá o diretório projeto1-ec2-s3 com os arquivos:

css
Copiar
Editar
README.md
terraform/
├── main.tf
├── variables.tf
├── outputs.tf
✅ Seu projeto já estará público, organizado e documentado para recrutadores ou qualquer visitante!

Esse erro significa que o Git ainda não sabe quem é você — ou seja, falta configurar seu nome e e-mail, que são usados para registrar os commits com sua identidade.

Mas é fácil resolver! Vamos configurar isso agora:

✅ Etapa única: Configurar sua identidade no Git (uma vez só)
No CMD, digite (substituindo pelas suas informações reais):

bash
Copiar
Editar
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@exemplo.com"
🔁 Exemplo real:

bash
Copiar
Editar
git config --global user.name "João Silva"
git config --global user.email "joao.silva@gmail.com"
💡 O que esses comandos fazem?
--global significa que essas informações serão salvas para todos os repositórios do seu computador.

Assim, você não precisará repetir isso nos próximos projetos.

✅ Depois disso:
Tente novamente o commit:

bash
Copiar
Editar

git commit -m "Projeto 1: EC2 + S3 com Terraform"
E depois:

bash
Copiar
Editar

git push origin main
📌 Me avise quando subir, e te ajudo a revisar o visual no GitHub Web também! 🚀

✅ Solução: Ignorar a pasta .terraform antes de fazer o commit
📌 Passo 1 – Criar um arquivo .gitignore
Na raiz do seu projeto (dentro de aws-cloud-projects), crie um arquivo chamado:

bash
Copiar
Editar
echo .terraform/ > .gitignore
echo .terraform.lock.hcl >> .gitignore
echo terraform.tfstate >> .gitignore
echo terraform.tfstate.backup >> .gitignore
Ou edite manualmente o arquivo .gitignore com esse conteúdo:

gitignore
Copiar
Editar
# Ignorar arquivos do Terraform
.terraform/
.terraform.lock.hcl
terraform.tfstate
terraform.tfstate.backup
📌 Passo 2 – Remover arquivos grandes do histórico antes de tentar novamente
bash
Copiar
Editar
git rm -r --cached projeto1-ec2-s3/terraform/.terraform
📌 Passo 3 – Refazer o commit e tentar novamente
bash
Copiar
Editar
git add .
git commit -m "Projeto 1: EC2 + S3 com Terraform (corrigido .gitignore)"
git push origin main
✅ Isso vai evitar que arquivos pesados desnecessários sejam enviados para o GitHub e permitir que seu push finalize com sucesso.

Me avise quando fizer isso ou se quiser que eu gere o conteúdo .gitignore completo pra você! 🚀







 
