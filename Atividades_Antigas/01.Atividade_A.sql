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
describe cliente;
select * from cliente

/*04. Criando a Tabela Fornecedor*/
/*criando fornecedor*/
create table fornecedor(
codigo varchar(100),
nome varchar(100),
cpf varchar(100),
telefone varchar(100)
);
describe fornecedor;
select * from fornecedor
/*05. Criando a Tabela Compra*/
/*criando compra*/
create table compra(
codigo varchar(100),
quantidade_produto varchar(100)
);
describe compra;
select * from compra
/*06. Criando a Tabela Produto*/
/*criando produto*/
create table produto(
codigo varchar(100),
descricao varchar(100),
valor varchar(100)
);
describe produto;
select * from produto
