create database banco_dados_ii_tarde;
use banco_dados_ii_tarde;

-- criação de tabelas
create table Instrutor (
	id_instrutor int NOT NULL,
    nome_instrutor varchar(50) NOT NULL,
    logadouro_instrutor varchar(50),
    bairro_instrutor varchar(50) NOT NULL,
    cidade_instrutor varchar(50) NOT NULL,
    estado_instrutor varchar(50) NOT NULL,
    telefone_residencial_instrutor BIGINT NOT NULL,
    telefone_celular_instrutor BIGINT,
    email_instrutor varchar(50),
    
    CONSTRAINT PK_instrutor PRIMARY KEY (id_instrutor)
);

Create table treinamento(
	cod_trei int,
	nome_Treinamento varchar (30),
	Valor decimal(10,2)
);

create table produtos(
	cod_prod int,
    nome_prod varchar(40),
    tipo_prod varchar(20),
    qtd_prod int,
    val_prod decimal(10,2)
);

-- inserir
INSERT INTO Instrutor 
VALUES
(1, "Emanoela Vieira", "Rua Afonso Monteiro, 125", "Santa Mario", "Diadema", "SP", 45678912, 11963852741, "emanoela@mail.com"),
(2, "Viviane Sheila", "Rua Rafael Moises, 111", "Santa Mario", "Diadema", "SP", 36251478, 11985742365, "viviane@mail.com"),
(3, "Cleiton de Andrade", "Rua Antonio Serafim, 22", "Cooperativa", "São Bernado dos Campos", "SP", 65832147, 11985263254, "cleiton@mail.com"),
(4, "Alice Vieira", "Rua Angelo Marçon, 54", "JD Nazareth", "São Bernado dos Campos", "SP", 74589632, 11985263254, "alice@mail.com"),
(5, "Vania Lúcia", "Rua Jose Banifacio, 2654", "Conceiçao", "Diadema", "SP", 25786369, 11999805475, "vania@mail.com");


Insert into treinamento values
(1, 'WORD','720.00'),
(2, 'EXCEL', '850.00'),
(3, 'POWERPOINT', '550.00');

insert into produtos values
(1, 'Câmera DIgital', 'Digitais', 200, 400.00),
(2, 'DVD Player', 'Eletrônicos', 300, 500.00),
(3, 'Monitor', 'Informática', 250, 900.00),
(4, 'Televisor', 'Eletrônicos', 400, 650.00),
(5, 'Filmadora Digital', 'Digitais', 350, 700.00),
(6, 'Celular', 'Telefone', 500, 850.00),
(7, 'Teclado', 'Informática', 450, 450.00),
(8, 'VideoGame', 'Eletrônicos', 1500, 3500.00),
(9, 'Mouse', 'Informática', 400, 60.00),
(10, 'Impressora', 'Informática', 200, 600.00);


-- seleção
SELECT nome_instrutor, telefone_celular_instrutor, email_instrutor FROM Instrutor; -- Exibe nome, telefone e email
SELECT nome_instrutor AS 'Instrutor', telefone_celular_instrutor AS 'Telefones', email_instrutor AS 'Emails' FROM Instrutor; -- exibe nome, telefone e email com apelidos dados
SELECT nome_instrutor AS  'Instrutor', 'CLT' AS Contrato FROM Instrutor; -- exibe nome e uma tabela "Contrato", onde todos ficam com CLT

SELECT nome_Treinamento AS 'Nome', Valor AS 'Valor normal', VALOR*1.1 AS 'Valor com aumento' FROM treinamento;

select * from produtos
where tipo_prod = 'informática';

select * from produtos
where tipo_prod = 'eletrônicos';

-- alterar 
ALTER table treinamento
add CONSTRAINT PRIMARY KEY (cod_trei);

-- updtade
update produtos
set val_prod = val_prod *1.1
where tipo_prod = 'informática';

update produtos
set qtd_prod = qtd_prod + 50
where qtd_prod <=300;

update produtos
set val_prod = val_prod * 1.1
where tipo_prod = 'informática' 
and val_prod <= 700.00;	

update produtos
set val_prod = val_prod * 1.1
where tipo_prod = 'eletrônicos'
or val_prod >=700.00;													


-- delete
delete from produtos 
where cod_prod = 9;