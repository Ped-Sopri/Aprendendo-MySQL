# E-commerce Database – MySQL 🛒 

## Sobre o Projeto 📖 

Este projeto consiste na modelagem e implementação de um banco de dados relacional para um sistema de e-commerce utilizando MySQL.

O objetivo foi simular um ambiente real de comércio eletrônico contendo:

Clientes

Pedidos

Produtos

Fornecedores

Vendedores

Estoque

Pagamentos

O projeto inclui:

✔ Criação do banco de dados
✔ Modelagem relacional
✔ Inserção de dados fictícios
✔ Consultas SQL para análise

## Estrutura do Projeto 🗂


ecommerce-database
│
├── criando_tabelas_mysql.sql   # Criação do banco e tabelas
├── insert_tabelas.sql          # Inserção de dados fictícios
├── criando_querys.sql          # Consultas SQL
└── README.md


## Estrutura do Banco de Dados 🗄️ 

Banco criado:

CREATE DATABASE ecomerce;

O banco contém tabelas que representam os principais componentes de um sistema de e-commerce.

📋 Tabelas Principais


👤 Clients

Armazena os clientes do sistema.

Campos principais:

idClient

Fname

Lname

CPF_client

Address

Constraint:

CPF único por cliente

📦 Product

Armazena os produtos disponíveis.

Campos:

idProduct

Pname

category

Avaliação

Ptamanho

Categorias disponíveis:

Eletronics
Móveis
Vestimenta
Quimico
Alimenticio
Brinquedo

🧾 Orders

Armazena os pedidos feitos pelos clientes.

Campos:

idOrders

idOrderClient

Orderstatus

sendValue

type_payment

Relacionamento:

Cliente 1:N Pedidos

💳 Credit Payment Validation

Tabela utilizada para validar pagamentos quando o método escolhido é cartão de crédito.

Campos:

card_holder

card_number

card_expiration

card_cvv

installments

🚚 Supplier

Armazena fornecedores dos produtos.

Campos:

idSuplier

socialnamesuplier

CNPJ_suplier

contactsuplier

🏪 Seller

Armazena vendedores cadastrados no sistema.

Pode representar:

Pessoa física (CPF)

Pessoa jurídica (CNPJ)

📦 ProductStorage

Armazena informações sobre estoque.

Campos:

storagequantity

storagelocation

🔗 Tabelas de Relacionamento
ProductSeller

Relaciona vendedores e produtos.

Seller N:N Product

ProductOrder

Relaciona produtos e pedidos.

Orders N:N Product

ProductSupplier

Relaciona fornecedores e produtos.

Supplier N:N Product

StorageLocation

Relaciona produtos aos locais de estoque.

ProductStorage N:N Product

📊 Consultas SQL Desenvolvidas
Quantos pedidos foram feitos por cada cliente
Algum vendedor também é fornecedor
Relação de produtos, fornecedores e estoque
Relação de fornecedores e produtos

## Como Executar o Projeto🚀
1️⃣ Criar o banco

Execute:

criando_tabelas_mysql.sql

2️⃣ Inserir dados fictícios

Execute:

insert_tabelas.sql

3️⃣ Rodar as consultas

Execute:

criando_querys.sql

## Conceitos Aplicados🧠 

Este projeto utiliza diversos conceitos fundamentais de banco de dados:

Modelagem relacional

Integridade referencial

Chaves primárias

Chaves estrangeiras

Relacionamentos 1:N

Relacionamentos N:N

Normalização

Consultas SQL

JOIN

GROUP BY

🛠 Tecnologias Utilizadas

MySQL

SQL

Modelagem Relacional
