DROP TABLE IF EXISTS TRANSPORTE;
DROP TABLE IF EXISTS TIPO_CARGA;
DROP TABLE IF EXISTS STATUS_TRANSPORTE;
DROP TABLE IF EXISTS MOTORISTA_DIRIGE_VEICULO;
DROP TABLE IF EXISTS MOTORISTA;
DROP TABLE IF EXISTS CNH;
DROP TABLE IF EXISTS CATEGORIA_CNH;
DROP TABLE IF EXISTS VEICULO;
DROP TABLE IF EXISTS STATUS_VEICULO;
DROP TABLE IF EXISTS COMBUSTIVEL;
DROP TABLE IF EXISTS CATEGORIA;
DROP TABLE IF EXISTS MODELO;
DROP TABLE IF EXISTS MARCA;
DROP TABLE IF EXISTS COR;
DROP TABLE IF EXISTS EIXO;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS CONTATO;
DROP TABLE IF EXISTS TIPO_CONTATO;
DROP TABLE IF EXISTS PESSOA_FISICA;
DROP TABLE IF EXISTS PESSOA_JURIDICA;
DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS ENDERECO;
DROP TABLE IF EXISTS BAIRRO;
DROP TABLE IF EXISTS CIDADE;
DROP TABLE IF EXISTS ESTADO;
DROP TABLE IF EXISTS LOGRADOURO;

CREATE TABLE PESSOA (
  ID SERIAL,
  NOME VARCHAR(45),
  DATA_CADASTRO DATE,
  PRIMARY KEY (ID)
);
CREATE TABLE PESSOA_FISICA (
  ID SERIAL,
  CPF VARCHAR(14),
  DATA_NASCIMENTO DATE,
  SEXO CHAR(1),
  ID_PESSOA INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_PESSOA)
  REFERENCES PESSOA (ID)
);


CREATE TABLE PESSOA_JURIDICA (
  ID SERIAL,
  CNPJ VARCHAR(20),
  RAZAO_SOCIAL VARCHAR(45),
  ID_PESSOA INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_PESSOA)
  REFERENCES PESSOA (ID)
);

CREATE TABLE FUNCIONARIO (
  ID SERIAL,
  CARGO VARCHAR(30),
  SALARIO FLOAT,
  ID_PESSOA_FISICA INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_PESSOA_FISICA)
  REFERENCES PESSOA_FISICA (ID)
  
);

CREATE TABLE CATEGORIA_CNH(
  ID SERIAL,
  CATEGORIA VARCHAR(2),
  PRIMARY KEY (ID)
);

CREATE TABLE CNH(
  ID SERIAL,
  NUMERO VARCHAR(45),
  DATA_VENCIMENTO DATE,
  ID_CATEGORIA_CNH INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CATEGORIA_CNH)
  REFERENCES CATEGORIA_CNH (ID)
);

CREATE TABLE MOTORISTA (
  ID SERIAL,
  CNH VARCHAR(11),
  DATA_VENCIMENTO DATE,
  ID_CNH INT,
  ID_FUNCIONARIO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES FUNCIONARIO (ID),
  FOREIGN KEY (ID_CNH)
  REFERENCES CNH (ID)
);

CREATE TABLE TIPO_CONTATO (
  ID SERIAL,
  TIPO VARCHAR(45),
  PRIMARY KEY(ID)
);
CREATE TABLE CONTATO (
  ID SERIAL,
  CONTATO VARCHAR(45),
  ID_TIPO INT,
  ID_PESSOA INT,
  FOREIGN KEY (ID_TIPO)
  REFERENCES TIPO_CONTATO (ID),
  FOREIGN KEY (ID_PESSOA)
  REFERENCES PESSOA(ID),
  PRIMARY KEY (ID)
);

CREATE TABLE ESTADO (
  ID SERIAL,
  SIGLA VARCHAR(2),
  NOME VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE CIDADE(
  ID SERIAL,
  NOME VARCHAR(45),
  ID_ESTADO INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_ESTADO)
  REFERENCES ESTADO(ID)  
);

CREATE TABLE BAIRRO (
  ID SERIAL,
  NOME_BAIRRO VARCHAR(45),
  ID_CIDADE INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CIDADE)
  REFERENCES CIDADE(ID)
);

CREATE TABLE LOGRADOURO (
  ID SERIAL,
  ABREVIACAO VARCHAR(5),
  NOME VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE ENDERECO (
  ID SERIAL,
  ENDERECO VARCHAR(45),
  NUMERO INT,
  CEP VARCHAR(9),
  COMPLEMENTO VARCHAR(20),
  ID_ESTADO INT,
  ID_LOGRADOURO INT,
  FOREIGN KEY(ID_ESTADO)
  REFERENCES ESTADO(ID),
  FOREIGN KEY(ID_LOGRADOURO)
  REFERENCES LOGRADOURO(ID),
  PRIMARY KEY (ID)
);

CREATE TABLE CATEGORIA (
  ID SERIAL,
  NOME VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE MARCA (
  ID INT,
  MARCA VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE EIXO(
  ID INT,
  EIXO INT,
  PRIMARY KEY (ID)
);

CREATE TABLE COR  (
  ID INT,
  COR VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE MODELO (
  ID SERIAL,
  MODELO VARCHAR(45),
  ANO VARCHAR(4),
  PESO FLOAT,
  ALTURA FLOAT,
  LARGURA FLOAT,
  COMPRIMENTO FLOAT,
  ID_MARCA INT,
  ID_EIXO INT,
  ID_COR INT,
  FOREIGN KEY(ID_MARCA)
  REFERENCES MARCA(ID),
  FOREIGN KEY(ID_EIXO)
  REFERENCES EIXO(ID),
  FOREIGN KEY(ID_COR)
  REFERENCES COR(ID),
  PRIMARY KEY (ID)
);

CREATE TABLE STATUS_VEICULO(
  ID SERIAL,
  STATUS VARCHAR(45),
  PRIMARY KEY(ID)
);

CREATE TABLE COMBUSTIVEL(
  ID SERIAL,
  COMBUSTIVEL VARCHAR (45),
  PRIMARY KEY (ID)
);


CREATE TABLE VEICULO (
  ID SERIAL,
  NOME VARCHAR(45),
  CHASSI VARCHAR(45),
  PLACA VARCHAR(7),
  ID_STATUS INT,
  ID_COMBUSTIVEL INT,
  ID_CATEGORIA INT NOT NULL,
  ID_MODELO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CATEGORIA)
  REFERENCES CATEGORIA (ID),
  FOREIGN KEY (ID_MODELO)
  REFERENCES MODELO (ID),
  FOREIGN KEY (ID_STATUS)
  REFERENCES STATUS_VEICULO (ID),
  FOREIGN KEY (ID_COMBUSTIVEL)
  REFERENCES COMBUSTIVEL(ID)
);


CREATE TABLE MOTORISTA_DIRIGE_VEICULO(
  ID SERIAL,
  DATA_INICIO DATE,
  DATA_FIM DATE,
  ID_MOTORISTA INT,
  ID_VEICULO INT,
  FOREIGN KEY(ID_MOTORISTA)
  REFERENCES MOTORISTA(ID),
  FOREIGN KEY(ID_VEICULO)
  REFERENCES VEICULO(ID),
  PRIMARY KEY(ID)
);

CREATE TABLE STATUS_TRANSPORTE(
  ID SERIAL,
  STATUS VARCHAR(45),
  PRIMARY KEY(ID)
);

CREATE TABLE TIPO_CARGA (
  ID SERIAL,
  DESCRICAO VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE TRANSPORTE (
  ID SERIAL,
  VALOR_CONTRATO FLOAT,
  DATA_INICIO DATE,
  DATA_FIM DATE,
  ID_STATUS INT NOT NULL,
  ID_TIPO_CARGA INT NOT NULL,
  ID_CLIENTE INT NOT NULL,
  ID_FUNCIONARIO INT NOT NULL,
  ID_VEICULO INT NOT NULL,
  ID_ENDERECO_ORIGEM INT NOT NULL,
  ID_ENDERECO_DESTINO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_ENDERECO_ORIGEM)
  REFERENCES ENDERECO(ID),
  FOREIGN KEY (ID_ENDERECO_DESTINO)
  REFERENCES ENDERECO(ID),
  FOREIGN KEY (ID_CLIENTE)
  REFERENCES PESSOA(ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES PESSOA(ID),
  FOREIGN KEY (ID_VEICULO)
  REFERENCES VEICULO (ID),
  FOREIGN KEY (ID_STATUS)
  REFERENCES STATUS_VEICULO(ID),
  FOREIGN KEY(ID_TIPO_CARGA)
  REFERENCES TIPO_CARGA(ID)
);

insert into CATEGORIA (ID,NOME) values
	(1,'Caminhao 2 eixos'),
	(2,'Caminhao 3 eixos'),
	(3,'Caminhao 4 eixos'),
	(4,'Mini Van'),
	(5,'Seda');
    
insert into MODELO (MODELO, MARCA, ANO, EIXO, PESO, ALTURA, LARGURA, COMPRIMENTO, COR) values
	('1414','Mercedes',1995,2,6000.00,3.00,2.80,4.20,'azul'),
	('1515','Mercedes',1999,2,6000.00,3.00,3.00,4.40,'amarelo'),
	('710','Mercedes',2000,2,5600.00,3.00,2.80,4.00,'laranja'),
	('spin','Chevrolet',2008,2,3000.00,2.60,2.40,3.40,'branco'),
	('Vectra','Ford',2005,2,2500.00,1.80,2.10,3.00,'prata');
    
insert into FUNCIONARIO (NOME, CPF, CARGO, SALARIO, SEXO, DATA_CADASTRO, DATA_NASCIMENTO) values
	('Marcos','17131518042','MOTORISTA',3000.00,'M','2015-05-01','1980-09-19'),
    ('Douglas','04418273069','MOTORISTA',2200.00,'M','2016-06-15','1985-05-23'),
    ('Mario','04635715094','MOTORISTA',3500.00,'M','2015-07-12','1989-07-24'),
    ('Cleber','04598206055','MOTORISTA',2700.00,'M','2016-01-10','1987-06-16'),
    ('Jonathan','19793260025','MOTORISTA',4000.00,'M','2014-02-20','1990-01-12');

insert into CLIENTE (NOME, TIPO_CLIENTE,CNPJ, CPF, DATA_CADASTRO) values 	
		('Jorge', 'A', '01.214.339/0001-53', '053.287.330-02', '2018-05-30'),
		('Carlos', 'A', '33.457.141/0001-97', '641.167.660-70', '2018-07-25'),
        ('Mateus', 'A', '76.711.710/0001-91', '317.281.670-27', '2018-04-19'),
        ('Joao', 'A', '48.568.105/0001-78', '798.916.160-53', '2018-01-06'),
        ('Douglas', 'A', '33.445.900/0001-00', '467.370.900-44', '2018-10-20');

    
insert into CONTATO (TELEFONE_01, TELEFONE_02, TELEFONE_03, EMAIL) values 
	('99921-3881','3352-2470','99918-1430','contatofuncionario@gmail.com'),
    ('99944-3276','3308-1470','99821-0405','contatofuncionario@hotmail.com'),
    ('99933-4452','3321-5567','99916-2150','contatocliente@gmail.com'),
    ('99905-1404','3364-5819','99914-2890','contatocliente@hotmail.com'),
    ('99951-1211','3356-7080','99911-2130','emailcliente@outlook.com');
    
insert into CONTATO_CLIENTE (ID_CONTATO, ID_CLIENTE) values 
	(3,1),
    (4,2),
    (5,3),
    (3,4),
    (4,5);
    
insert into CONTATO_FUNCIONARIO (ID_CONTATO, ID_FUNCIONARIO) values 
	(1,1),
    (2,2),
    (2,3),
    (5,4),
    (1,5);

insert into MOTORISTA (CNH, DATA_VENCIMENTO, CATEGORIA_CNH, ID_FUNCIONARIO) values
	(123456,'2018-10-20','E',1),
	(234567,'2020-02-26','D',2),
	(345678,'2021-05-15','E',3),
	(456789,'2022-06-02','AB',4),
	(567891,'2021-06-05','D',5);

insert into VEICULO (NOME, CHASSI, PLACA, STATUS, COMBUSTIVEL, ID_CATEGORIA, ID_MODELO, ID_MOTORISTA) values 
	('Azulao','12345','MKV1010','em uso','Disel', 1, 1, 1),
	('Amarelao','23456','MKV1011','disponivel','Disel', 2, 2, 2),
	('Laranjao','34567','MKV1012','disponivel','Disel', 3, 3, 3),
	('mini','45678','MKV1013','em uso','Gasolina', 4, 4, 4),
	('vectra','56789','MKV1014','em uso','Alcool', 5, 5, 5);

insert into FINANCIAMENTO (VALOR_PARCELA, PARCELAS_TOTAIS, PARCELAS_PAGAS, FINANCIADOR, ID_VEICULO) values 
	(800.00,60,22,'Santander',1),
	(1000.00,48,40,'Banestes',2),
	(1500.00,48,10,'ITAU',3),
	(890.00,60,35,'Santander',4),
	(550.00,48,20,'ITAU',5);
	
insert into ENDERECO (ENDERECO, LOGRADOURO, NUMERO, CEP, COMPLEMENTO, CIDADE, ESTADO) values
	('Augusto Ruschi','avena',12,'29164-830','casa','serra','es'),
	('Brasil','avena',45,'29164-495','','serra','es'),
	('Antônio Tironi','beco',08,'29164-637','','serra','es'),
	('Angélica Paulina da Cruz','alameda',23,'29150-553','','cariacica','es'),
	('Adilson Coelho','rua',102,'29150-533','casa','cariacica','es');
    
insert into ENDERECO_CLIENTE (ID_ENDERECO, ID_CLIENTE) values 
	(1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);

insert into ENDERECO_FUNCIONARIO (ID_ENDERECO, ID_FUNCIONARIO) values 
	(3,1),
    (4,2),
    (5,3),
    (3,4),
    (4,5);

insert into SEGURO (STATUS, DATA_VENCIMENTO, FIM_CONTRATO, ID_VEICULO) values 
	('ativo','2018-08-25','2022-05-05',1),
    ('desativo','2019-12-14','2026-01-18',2),
    ('ativo','2020-06-27','2026-09-10',3),
    ('desativo','2016-12-01','2018-10-10',4),
    ('ativo','2022-09-09','2028-04-03',5);
    
insert into ENDERECO_SERVICO (TIPO, ID_ENDERECO) values
	('D', 1),
    ('O', 2),
    ('O', 3),
    ('D', 4),
    ('O', 5);
    
insert into SERVICO (STATUS, VALOR_CONTRATO, DATA_INICIO, DATA_FIM, ID_CLIENTE, ID_FUNCIONARIO, ID_VEICULO, ID_ENDERECO_ORIGEM, ID_ENDERECO_DESTINO) values
	('CONCLUDIO', 7000.00, '2016-03-14', '2018-03-14', 5, 5, 5, 2, 4),
    ('EM ANDAMENTO', 5000.00, '2017-10-10', '2018-10-10', 4, 4, 4, 3, 4),
    ('CONCLUDIO', 6000.00, '2017-02-25', '2018-02-25', 3, 3, 3, 5, 1),
    ('CONCLUDIO', 4000.00, '2017-01-10', '2018-01-10', 2, 2, 2, 3, 4),
    ('EM ANDAMENTO', 10000.00, '2018-08-20', '2020-08-20', 1, 1, 1, 2, 1);
