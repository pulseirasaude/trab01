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

CREATE TABLE MOTORISTA (
  ID SERIAL,
  NUMERO_CNH VARCHAR(11),
  DATA_VENCIMENTO DATE,
  ID_CATEGORIA_CNH INT,
  ID_FUNCIONARIO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES FUNCIONARIO (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES CATEGORIA_CNH(ID)
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
  NOME VARCHAR(45),
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

CREATE TABLE ENDERECO_PESSOA(
  ID SERIAL,
  ID_ENDERECO INT NOT NULL,
  ID_PESSOA INT NOT NULL,
  FOREIGN KEY (ID_ENDERECO)
  REFERENCES ENDERECO(ID),
  FOREIGN KEY (ID_PESSOA)
  REFERENCES PESSOA(ID),
  PRIMARY KEY (ID)
);
CREATE TABLE CATEGORIA_VEICULO (
  ID SERIAL,
  CATEGORIA VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE MARCA (
  ID SERIAL,
  MARCA VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE EIXO(
  ID SERIAL,
  QUANTIDADE_EIXO INT,
  PRIMARY KEY (ID)
);

CREATE TABLE COR  (
  ID SERIAL,
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
  PLACA VARCHAR(8),
  ID_STATUS INT,
  ID_COMBUSTIVEL INT,
  ID_CATEGORIA INT NOT NULL,
  ID_MODELO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CATEGORIA)
  REFERENCES CATEGORIA_VEICULO (ID),
  FOREIGN KEY (ID_MODELO)
  REFERENCES MODELO (ID),
  FOREIGN KEY (ID_STATUS)
  REFERENCES STATUS_VEICULO (ID),
  FOREIGN KEY (ID_COMBUSTIVEL)
  REFERENCES COMBUSTIVEL(ID)
);


CREATE TABLE MOTORISTA_VEICULO(
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
  TIPO VARCHAR(45),
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
  REFERENCES STATUS_TRANSPORTE(ID),
  FOREIGN KEY(ID_TIPO_CARGA)
  REFERENCES TIPO_CARGA(ID)
);
