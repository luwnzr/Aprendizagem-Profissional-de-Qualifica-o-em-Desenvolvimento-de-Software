/*Programação de Banco de Dados
Funções Nativas do Banco My SQL
*/
CREATE DATABASE TEST;
use test;
-- 1. Criando tabela medicoes_experimento
create table medicoes_experimento(
	repeticao INT,
    valor_medido DECIMAL(10,4)
);
-- Carga de dados
insert into medicoes_experimento (repeticao, valor_medido) VALUES
	(1, 12.3454),
    (2, 12.2354),
    (3, 13.1354),
    (4, 12.1767),
    (5, 11.2827),
	(6, 12.3849);
-- 2. Aplicando funções para arrendondamento de valores
	select * from medicoes_experimento;
    
SELECT repeticao, ROUND(valor_medido) FROM medicoes_experimento;

-- 2.1 Aplicando funções de agregação, exibindo media dos valores de uma coluna(valor_medido)
	SELECT AVG (valor_medido) FROM medicoes_experimento;
    
    SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;
    
-- 2.2 Apague a tabela
drop table medicoes_experimento;

-- 2.3 Criando tabela medicoes_experimento
CREATE TABLE medicoes_experimento(
	repeticao INT,
    valor_medido DECIMAL(6,4),
    sujeito CHAR(1)
);

-- 2.4 Carga de dados
INSERT INTO medicoes_experimento (repeticao, valor_medido, sujeito) VALUES
(1, 12.3454, 'A'),
(2, 12.2354, 'A'),
(3, 12.1354, 'A'),
(4, 12.1767, 'A'),
(5, 12.2827, 'A'),
(6, 12.3849, 'A'),
(1, 12.3454, 'B'),
(2, 12.2354, 'B'),
(3, 12.1454, 'B'),
(4, 12.1567, 'B'),
(5, 12.2627, 'B'),
(6, 12.5679, 'B');
/*Programação de Banco de Dados
Funções e operadores de Strings e expressões
*/

-- 01. Exibindo apenas o Olá Mundo
SELECT "Olá Mundo";

-- 01.1 A função CONCAT realiza a concatenação de três strings
SELECT CONCAT("Olá", " 2024", " Mundo");

-- 01.2 A função LOWER converte as letras maiúsculas em letras minúsculas
SELECT LOWER("Converte TUDO para minúsculo");

-- 01.3 A função LPAD (left pad) acrescenta zeros (terceiro argumento) à string "123"
SELECT LPAD("123", "4", "0");

-- 01.4 Exibe string com espaços nas extremidades
SELECT '   tring com espaços nas extremidades  ';

-- 01.5 A função TRIM remove os espaços em branco das extremidades da string
SELECT TRIM(' string com espaços nas extremidades  ');

-- 01.6 A função REGEXP_SUBSTR procura um determinado padrão (segundo argumento) numa string (primeiro argumento)
SELECT REGEXP_SUBSTR('Tem um número 12 no meio desta string', '\\d+');

-- 02. Criando nova tabela

CREATE TABLE clientes_experimento(
	id INT PRIMARY KEY,
    nome_completo VARCHAR(225),
    email VARCHAR(225),
    telefone VARCHAR(20)
);
 -- 02.1 Carga de Dados
 INSERT INTO clientes_experimento(id, nome_completo, email, telefone)
 VALUES
('1', 'João Pedro Silva', 'joao.pedro@gmail.com', '(11) 1234-5678'),
('2', 'Maria Luiza Oliveira', 'maria.luiza@yahoo.hotmail.com', '(21) 98766-5432'),
('3', 'Carlos Eduardo Santos', 'carlos.eduardo@hotmail.com', '(31) 1111-2222'),
('4', 'Ana Beatriz Costa', 'ana.beatriz@gmail.com', '(41) 3333-4444'),
('5', 'Luís Felipe Pereira', 'luis.felipe@yahoo.com', '(51) 5555-6666' ),
('6', 'Rafaela Cristina Souza', 'rafaela.cristina@hotmail.com', '(61) 7777-8888'),
('7', 'Pedro Henrique Almeida', 'pedro.henrique.gmail.com', '(71) 9999-0000'),
('8', 'Gabriela Oliveira Lima', 'gabriela.oliveira@yahoo.com', '(81) 1234-5678'),
('9', 'Felipe Augusto Rocha', 'felipe.augusto@hotmail.com', '(91) 9876-5432'),
('10', 'Isabella Cristina Ferreira', 'isabella.cristina@gmail.com', '(10) 1111-2222'),
('11', 'Chico Buarque', 'chico.buarque@gmail.com', '(11) 1234-5678'),
('12', 'Silva Buarque', 'silva.buarque@yahoo.com', '(21) 9876-5432'),
('13', 'Eduardo Bueno', 'eduardo.bueno@hotmail.com', '(31) 1111-2222'),
('14', 'Mestre Sprinter', 'mestre.sprinter@gmail.com', '(31) 3333-4444'),
('15', 'Dr. Cooper', 'dr.cooper@yahoo.com', '(51) 5555-6666');

select * from clientes_experimento;

-- Consultando registros usando filtro wheere e expressão like
SELECT * from clientes_experimento where nome_Completo LIKE 'Dr.%';
SELECT * from clientes_experimento where nome_completo LIKE '%ana%';
/* programação de Banco de Dados Funções data e hora*/

use test;
SELECT NOW();

-- Exibe 2020-09-01 23:33:25

SELECT YEAR('2020-09-01 23:33:25');

-- Exibe 2020

SELECT YEAR(NOW());

-- Exibe 2020

SELECT DAYOFYEAR('2020-02-01');

-- Exibe 32

SELECT STR_TO_DATE('01/02/2020', '%d/%m/%Y');

-- Exibe 2020-02-01

SELECT DATE_FORMAT('2020-09-01 23:33:25', '%d/%m/%Y');

-- Exibe 01/09/2020

-- A função CAST recebe strings e realiza a concatenação entre strings
SELECT CONCAT("Esse é o número", 10 );

SELECT CAST('2020-02-02 12:12:12' as date);

-- Exibe 2020-02-02
-- 2.4 Consultando registros da tabela
select * from medicoes_experimento;

-- 2.5 Consultando registros agrupados com função de agregação
SELECT sujeito, AVG(valor_medido) FROM medicoes_experimento GROUP BY sujeito;
