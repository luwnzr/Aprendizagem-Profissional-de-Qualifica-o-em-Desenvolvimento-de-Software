/*Implementação de Banco de Dados Relacional usando MySQL*/
/*01. Criando Arquivo/Banco de Dados*/
create database empresa;
/*02. Acessando Arquivo*/
use empresa;
/*criando tabela*/
/*03. Criando a Tabela Cliente*/
create table cliente(
codigo varchar(4),
nome varchar(50),
enredeco varchar(50),
cpf varchar(12),
telefone varchar(20)
);

/*criando fornecedor*/
create table fornecedor(
codigo varchar(100),
nome varchar(100),
cpf varchar(100),
telefone varchar(100)
);

/*criando compra*/
create table compra(
codigo varchar(100),
quantidade_produto varchar(100)
);

/*criando produto*/
create table produto(
codigo varchar(100),
descricao varchar(100),
valor varchar(100)
);