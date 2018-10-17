CREATE TABLE CLIENTE (
  ID SERIAL,
  NOME VARCHAR(45),
  TIPO_CLIENTE CHAR(1),
  CNPJ VARCHAR(18),
  CPF VARCHAR(14),
  DATA_CADASTRO DATE,
  PRIMARY KEY (ID)
);

CREATE TABLE FUNCIONARIO (
  ID SERIAL,
  NOME VARCHAR(45),
  CPF VARCHAR(14),
  CARGO VARCHAR(30),
  SALARIO FLOAT,
  SEXO CHAR(1),
  DATA_CADASTRO DATE,
  DATA_NASCIMENTO DATE,
  PRIMARY KEY (ID)
);


CREATE TABLE MOTORISTA (
  ID SERIAL,
  CNH VARCHAR(11),
  DATA_VENCIMENTO DATE,
  CATEGORIA_CNH VARCHAR(2),
  ID_FUNCIONARIO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES FUNCIONARIO (ID)
);


CREATE TABLE CONTATO (
  ID SERIAL,
  TELEFONE_01 VARCHAR(12),
  TELEFONE_02 VARCHAR(12),
  TELEFONE_03 VARCHAR(12),
  EMAIL VARCHAR(45),
  PRIMARY KEY (ID)
);

CREATE TABLE ENDERECO (
  ID SERIAL,
  ENDERECO VARCHAR(45),
  LOGRADOURO VARCHAR(20),
  NUMERO INT,
  CEP VARCHAR(9),
  COMPLEMENTO VARCHAR(20),
  CIDADE VARCHAR(35),
  ESTADO VARCHAR(20),
  PRIMARY KEY (ID)
);

CREATE TABLE CATEGORIA (
  ID INT NOT NULL,
  NOME VARCHAR(45),
  PRIMARY KEY (ID)
);


CREATE TABLE MODELO (
  ID SERIAL,
  MODELO VARCHAR(45),
  MARCA VARCHAR(20),
  ANO VARCHAR(4),
  EIXO INT,
  PESO FLOAT,
  ALTURA FLOAT,
  LARGURA FLOAT,
  COMPRIMENTO FLOAT,
  COR VARCHAR(20),
  PRIMARY KEY (ID)
);

CREATE TABLE VEICULO (
  ID SERIAL,
  NOME VARCHAR(45),
  CHASSI VARCHAR(45),
  PLACA VARCHAR(7),
  STATUS VARCHAR(20),
  COMBUSTIVEL VARCHAR(15),
  ID_CATEGORIA INT NOT NULL,
  ID_MODELO INT NOT NULL,
  ID_MOTORISTA INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CATEGORIA)
  REFERENCES CATEGORIA (ID),
  FOREIGN KEY (ID_MODELO)
  REFERENCES MODELO (ID),
  FOREIGN KEY (ID_MOTORISTA)
  REFERENCES MOTORISTA (ID)
);

CREATE TABLE SEGURO (
  ID SERIAL,
  STATUS VARCHAR(20),
  DATA_VENCIMENTO DATE,
  FIM_CONTRATO DATE,
  ID_VEICULO INT NOT NULL,
  VALOR FLOAT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_VEICULO)
  REFERENCES VEICULO (ID)
);


CREATE TABLE FINANCIAMENTO (
  ID SERIAL,
  VALOR_PARCELA FLOAT,
  PARCELAS_TOTAIS INT,
  PARCELAS_PAGAS INT,
  FINANCIADOR VARCHAR(45),
  ID_VEICULO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_VEICULO)
  REFERENCES VEICULO (ID)
);


CREATE TABLE ENDERECO_SERVICO (
  ID SERIAL,
  TIPO CHAR,
  ID_ENDERECO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_ENDERECO)
  REFERENCES ENDERECO (ID)
);

CREATE TABLE SERVICO (
  ID SERIAL,
  STATUS VARCHAR(15),
  VALOR_CONTRATO FLOAT,
  DATA_INICIO DATE,
  DATA_FIM DATE,
  ID_CLIENTE INT NOT NULL,
  ID_FUNCIONARIO INT NOT NULL,
  ID_VEICULO INT NOT NULL,
  ID_ENDERECO_ORIGEM INT NOT NULL,
  ID_ENDERECO_DESTINO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_ENDERECO_ORIGEM)
  REFERENCES ENDERECO_SERVICO (ID),
  FOREIGN KEY (ID_ENDERECO_DESTINO)
  REFERENCES ENDERECO_SERVICO (ID),
  FOREIGN KEY (ID_CLIENTE)
  REFERENCES CLIENTE (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES FUNCIONARIO (ID),
  FOREIGN KEY (ID_VEICULO)
  REFERENCES VEICULO (ID)
);

CREATE TABLE ENDERECO_CLIENTE (
  ID SERIAL,
  ID_CLIENTE INT NOT NULL,
  ID_ENDERECO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CLIENTE)
  REFERENCES CLIENTE (ID),
  FOREIGN KEY (ID_ENDERECO)
  REFERENCES ENDERECO (ID)
);

CREATE TABLE ENDERECO_FUNCIONARIO (
  ID SERIAL,
  ID_FUNCIONARIO INT NOT NULL,
  ID_ENDERECO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES FUNCIONARIO (ID),
  FOREIGN KEY (ID_ENDERECO)
  REFERENCES ENDERECO (ID)
);

CREATE TABLE CONTATO_FUNCIONARIO (
  ID SERIAL,
  ID_CONTATO INT NOT NULL,
  ID_FUNCIONARIO INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CONTATO)
  REFERENCES CONTATO (ID),
  FOREIGN KEY (ID_FUNCIONARIO)
  REFERENCES FUNCIONARIO (ID)
);

CREATE TABLE CONTATO_CLIENTE (
  ID SERIAL,
  ID_CONTATO INT NOT NULL,
  ID_CLIENTE INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_CONTATO)
  REFERENCES CONTATO (ID),
  FOREIGN KEY (ID_CLIENTE)
  REFERENCES CLIENTE (ID)
);
