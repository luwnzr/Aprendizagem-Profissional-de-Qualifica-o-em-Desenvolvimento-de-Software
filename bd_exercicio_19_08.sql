/*Criação das tabelas*/
create database `bd_exercicio`;
create table `bd_exercicio`.`tb_funcionario`(
	`func_codigo` INT NOT NULL primary KEY,
    `func_nome` VARCHAR (60) NULL,
    `func_cpf` VARCHAR (13) NULL,
    `forn_end` VARCHAR (90) NULL,
    `forn_salario` NUMERIC,
    `ger_depto_cod` INT,
    `trab_depto_cod` INT,
    `proj_cod` INT
);
create table `bd_exercicio`.`tb_departamento`(
	`depto_codigo` INT NOT NULL PRIMARY KEY,
	`depto_nome` VARCHAR (60) NULL,
	`local_cod` INT
);
create table `bd_exercicio`.`tb_projeto`(
	`proj_codigo` INT NOT NULL primary KEY,
    	`proj_numero` INT,
    	`depto_cod` INT,
    	`local_cod`INT
);
create table `bd_exercicio`.`tb_local`(
	`local_codigo` INT NOT NULL PRIMARY KEY,
	`local_desc` VARCHAR (60) NULL
);

/*Indice e Fk Funcionario /Gerencia /Departamento*/
ALTER TABLE `bd_exercicio`.`tb_funcionario`
ADD INDEX `fk_ger_depto_cod_idx` (`ger_depto_cod` ASC);

ALTER TABLE `bd_exercicio`.`tb_funcionario`
ADD constraint `fk_ger_depto_cod`
	foreign key (`ger_depto_cod`)
    references `bd_exercicio`.`tb_departamento` (`depto_codigo`);

/*Indice e FK funcionario /trabalha_para/ departamento*/
alter table `bd_exercicio`.`tb_funcionario`
add index `fk_trab_depto_cod_idx` (`trab_depto_cod` ASC);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_trab_depto_cod`
	foreign key (`trab_depto_cod`)
    references `bd_exercicio`.`tb_departamento` (`depto_codigo`);
    
/*Indice e FK funcionario /trabalha_no /projeto*/
alter table `bd_exercicio`.`tb_funcionario`
add index `fk_proj_cod_idx` (`proj_cod` ASC);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_proj_cod`
	foreign key (`proj_cod`)
    references `bd_exercicio`.`tb_projeto` (`proj_codigo`);
    
/*Indice e FK departamento local / atributo multivalorado*/
alter table `bd_exercicio`.`tb_departamento`
add index `fk_local_depto_cod_idx` (`local_cod` ASC);

alter table `bd_exercicio`.`tb_departamento`
add constraint `fk_depto_local_cod`
	foreign key (`local_cod`)
    references `bd_exercicio`.`tb_local` (`local_codigo`);

    
/*Indice e FK projeto local / atributo multivalorado*/
alter table `bd_exercicio`.`tb_projeto`
add index `fk_local_proj_cod_idx` (`local_cod` ASC);

alter table `bd_exercicio`.`tb_projeto`
add constraint `fk_proj_local_cod`
	foreign key (`local_cod`)
    references `bd_exercicio`.`tb_local` (`local_codigo`);
/*Inserindo dados na tabela local*/
insert into `bd_exercicio`.`tb_local`(local_codigo, local_desc) values (1, 'São Paulo');
insert into `bd_exercicio`.`tb_local`(local_codigo, local_desc) values (2, 'Minas Gerais');
insert into `bd_exercicio`.`tb_local`(local_codigo, local_desc) values (3, 'Rio de Janeiro');
-- Inserindo dados na tabela departamento
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod)
	values (1, 'TI', 1);
    insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod)
	values (2, 'RH', 2);
    insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod)
	values (3, 'ADM', 3);
    
-- Inserindo dados na tabela projeto
insert into `bd_exercicio`.`tb_projeto`(proj_codigo, proj_numero, depto_cod, local_cod)
	values (1, 11, 1, 1);
    insert into `bd_exercicio`.`tb_projeto`(proj_codigo, proj_numero, depto_cod, local_cod)
	values (2, 22, 2, 2);
    
-- Inserindo funcionario que trabalha no depto 1 e projeto 1, estefuncionario nao gerencia um departamento
insert into `bd_exercicio`.`tb_funcionario`(func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
values (1, 'Jose Silva', '12312312344', 'Endereço', 2000, null, 1, 1);

-- Inserindo funcionario que trabalha e gerencia o departamento 2, e trabalha tambem no projeto 2
insert into `bd_exercicio`.`tb_funcionario`(func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
values (2, 'Ana Silva', '12345678944', 'Endereço', 3000, 2, 2, 2);
select func_nome, depto_nome, proj_numero
from `bd_exercicio`.`tb_funcionario`
inner join `bd_exercicio`.`tb_departamento` on depto_codigo = trab_depto_cod
inner join `bd_exercicio`.`tb_projeto` on proj_codigo = proj_cod;
