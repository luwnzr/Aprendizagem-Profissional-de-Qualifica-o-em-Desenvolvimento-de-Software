/*
SENAC DF - CEP Jessé Freire
2024.07.276 - Aprendizagem Profissional de Qualificação em Desenvolvimento de Softwares
Prof° Hudson Neves
Projeto Final - Implementação de Banco de Dados Relacional com MySQL
Projeto - Clinica Odontológica OdontoVida*/

insert into Paciente (nome, data_nacsimento, telefone, endereco, email) values
('Ana Silvia', '1986-04-15', '11987654321', 'Rua das Flores, 123, São Paulo', 'ana.silva@email.com'),
('Carlos Oliveira', '1990-06-30', '21987654321', 'Avenida Paulista, 456, São Paulo', 'carlos.oliveira@email.com'),
('Fernanda Costa', '1982-12-12', '31987654321', 'Rua das Acácias, 789, Belo Horizonte', 'fernanda.costa@email.com'),
('João Santos', '1978-03-21', '41987654321', 'Praça da Liberdade, 101, Belo Horizonte', 'joao.santos@email.com'),
('Maria Souza', '1995-09-10', '519876574321', 'Rua do Mercado, 202, Rio de Janeiro', 'maria.souza@email.com'),
('Pedro Lima', '1988-07-25', '61987654321', 'Rua das Palmeiras, 202, Rio de Janeiro', 'pedro.lima@email.com'),
('Paula Ferreira', '1992-11-11', '71987654321', 'Rua dos Pinheiros, 404, Porto Alegre', 'paula.ferreira@email.com'),
('Roberto Almeida', '1986-05-05', '81987654321', 'Avenida dos Anjos, 505, Porto Alegre', 'roberto.almeida@email.com'),
('Sofia Martins', '1984-01-20', '91987654321', 'Rua das Orquídeas, 606, Curitiba', 'sofia.martins@email.com'),
('Tiago Pereira', '1991-08-15', '1197654320', 'Rua dos Lírios, 707, Curitiba', 'tiago.pereira@email.com');

INSERT INTO Dentista (nome, especialidade, telefone, email) VALUES
('Dr. João Mendes', 'Odontologia', '11912345678', 'joao.mendes@email.com'),
('Dra. Maria Oliveira','Endotologia','21912345678','maria.oliveira@gmail.com'),
('Dr. Pedro Silva','Periodontia','31912345678','pedro.silva@gmail.com'),
('Dra. Fernanda Santos','Odontopediatria','41912345678','fernandas.santos@gmail.com'),
('Dr. Paulo Lima','Implantes','51912345678','paulo.lima@gmail.com'),
('Dra. Juliane Costa','Estetíca','61912345678','juliane.costa@gmail.com'),
('Dr. Ricardo Almeida','Cirurgia Oral','71912345678','ricardo.almeida@gmail.com'),
('Dra. Luana Martins','Clínica Geral','81912345678','luana.almeida@gmail.com'),
('Dr. Gabriel Pereira','Prótese Dentária','91912345678','gabriel.pereira@gmail.com'),
('Dra. Luana Ferreira','Radiologia','11923456789','laura.ferreira@gmail.com');

INSERT INTO Consulta (consulta_id, paciente_id, dentista_id, data_consulta) VALUES 
('', '1', '1', '2024-09-10 10:00:00'),
('', '2', '2', '2024-09-11 11:00:00'),
('', '3', '3', '2024-09-12 09:00:00'),
('', '4', '4', '2024-09-14 14:00:00'),
('', '5', '5', '2024-09-14 15:00:00'),
('', '6', '6', '2024-09-15 08:00:00'),
('', '7', '7', '2024-09-16 13:00:00'),
('', '8', '8', '2024-09-17 16:00:00'),
('', '9', '9', '2024-09-18 12:00:00'),
('', '10', '10', '2024-09-19 17:00:00');

INSERT INTO Tratamento (tratamento_id, consulta_id, descricao, data_inicio) VALUES 
('1', 'Limpeza e Poliemento', '2024-09-10', '2024-09-10'),
('2', 'Tratamento de Canal', '2024-09-11', '2024-09-25'),
('3', 'Aplicação de Flúor', '2024-09-12', '2024-09-12'),
('4', 'Extração de Dente', '2024-09-13', '2424-09-13'),
('5', 'Colocação de Aparelhos', '2024-09-14', '2024-12-14'),
('6', 'Implante Dentário', '2024-09-15', '2024-10-15'),
('7', 'Clareamento Dental', '2024-09-16', '2024-09-16'),
('8', 'Prótese Parcial', '2024-09-17', '2024-10-17'),
('9', 'Tratamento de Gengiva', '2024-09-18', '2024-10-17'),
('10', 'Reparo de Prótese', '2024-09-19', '2024-09-19');


INSERT INTO Procedimento (procedimento_id, nome, custo) VALUES 
('', 'Limpeza Dental', '150.00'),
('', 'Tratamento de Canal', '800.00'),
('', 'Aplicação de Flúor', '100.00'),
('', 'Extração de Dente', '200.00'),
('', 'Colocação de Aparelho', '1500.00'),
('', 'Implementação Dentário ', '2000.00'),
('', 'Clareamento Dental', '500.00'),
('', 'Protese Parcial', '1200.00'),
('', 'Tratamento de Gengiva', '300.00'),
('', 'Reparo de Prótese', '250.00');

INSERT INTO Tratamento_Procedimento (tratamento_id, procedimento_id, quantidade) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);
INSERT INTO Pagamento (tratamento_id, valor, data_pagamento) VALUES
(1, 150.00, '2024-09-10'),
(2, 800.00,'2024-09-25'),
(3, 100.00, '2024-09-12'),
(4, 200.00, '2024-09-13'),
(5, 1500.00,'2024-12-14'),
(6, 200.00, '2024-10-15'),
(7, 500.00, '2024-09-16'),
(8, 1200.00, '2024-10-17'),
(9, 300.00, '2024-09-25'),
(10, 250.00, '2024-09-19');
