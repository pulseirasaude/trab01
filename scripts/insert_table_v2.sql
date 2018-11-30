INSERT INTO PESSOA (NOME, DATA_CADASTRO) 
VALUES ('Thales Real', '2018-01-12'),
	   ('Ryan Augusto da Mata', '2015-06-20'),
	   ('Tomás da Cunha', '2016-08-08'),
	   ('Cauã Pires', '2017-11-04'),
	   ('Elias Peixoto', '2018-07-16'),
	   ('Gustavo Araújo', '2017-05-05'),
	   ('Davi e Helena Entulhos ME', '2018-07-18'),
	   ('Emilly e Rebeca Padaria Ltda', '2017-04-13'),
	   ('Teresinha e Esther Adega Ltda', '2016-08-09'),
	   ('Luzia e Malu Telecomunicações ME', '2015-01-08');
	   

INSERT INTO PESSOA_FISICA (CPF, DATA_NASCIMENTO, SEXO, ID_PESSOA)
VALUES ('240.211.364-28', '1996-07-13', 'M', 1),
	   ('245.389.770-55', '1996-04-19', 'M', 2),
	   ('124.664.660-90', '1990-10-19', 'M', 3),
	   ('613.204.047-15', '1992-12-25', 'M', 4),
	   ('805.153.783-13', '1992-01-18', 'M', 5),
	   ('967.041.166-13', '1989-07-20', 'M', 6);
	   
INSERT INTO PESSOA_JURIDICA (CNPJ, RAZAO_SOCIAL, ID_PESSOA)
VALUES ('03.845.897/0001-42', 'Davi e Helena Entulhos ME', 7),
	   ('61.208.112/0001-27', 'Emilly e Rebeca Padaria Ltda', 8),
	   ('46.539.911/0001-92', 'Teresinha e Esther Adega Ltda', 9),
	   ('39.053.788/0001-30', 'Luzia e Malu Telecomunicações ME', 10);

INSERT INTO FUNCIONARIO (CARGO, SALARIO, ID_PESSOA_FISICA)
VALUES ('MOTORISTA', 3300.00, 1),
	   ('GERENTE DE TRANSPORTE', 5000.00, 2),
	   ('GERENTE DE VEICULO', 4200.00, 3),
	   ('MOTORISTA', 2200.00, 4),
	   ('MOTORISTA', 3500.00, 5),
	   ('MOTORISTA', 3000.00, 6);

INSERT INTO CATEGORIA_CNH (CATEGORIA)
VALUES ('A'),
	   ('B'),
	   ('C'),
	   ('D'),
	   ('AB'),
	   ('AC'),
	   ('AD'),
	   ('BC'),
	   ('BD'),
	   ('CD');


INSERT INTO MOTORISTA (NUMERO_CNH, DATA_VENCIMENTO, ID_CATEGORIA_CNH, ID_FUNCIONARIO)
VALUES ('65137192579', '2020-10-10', 6, 1),
       ('05808723119', '2022-05-10', 7, 4),
	   ('46569685935', '2019-09-10', 8, 5),
	   ('15671759904', '2025-09-19', 9, 6);

INSERT INTO TIPO_CONTATO (TIPO)
VALUES ('EMAIL'),
	   ('TELEFONE'),
	   ('CELULAR');


INSERT INTO CONTATO (CONTATO, ID_TIPO, ID_PESSOA)
VALUES ('027999337259', 3, 1),
	   ('thales@gmail.com', 1, 1),
	   ('08929780426', 2, 2),
	   ('ryan@hotmail.com', 1, 2),
	   ('tomascunha@gmail.com', 1, 3),
	   ('089994186619', 3, 3),
	   ('04725870760', 2, 4),
	   ('caua@outlook.com', 1, 4),
	   ('047996257362', 3, 5),
	   ('eliaspeixoto@hotmail.com', 1, 5),
	   ('gustavoaraujo@hotmail.com', 1, 6),
	   ('06828206226', 2, 6),
	   ('contato@dhentulhos.com', 1, 7),
	   ('068987285886', 3, 7),
	   ('contato@erparadia.com', 1, 8),
	   ('09139023180', 2, 8),
	   ('contato@teadega.com', 1, 9),
	   ('091981722332', 3, 9),
	   ('contato@lmtelecomunicacao.com', 1, 10),
	   ('09625574434', 2, 10);

INSERT INTO ESTADO (SIGLA,NOME) 
VALUES ('ES', 'ESPIRITO SANTO'),
	   ('RJ', 'RIO DE JANEIRO'),
	   ('MG','MINAS GERAIS'),
	   ('SP','SÃO PAULO');
	   
INSERT INTO CIDADE(NOME, ID_ESTADO)
VALUES ('VILA VELHA',1),
	   ('VITORIA',1),
	   ('SAO PAULO',4),
	   ('BELO HORIZONTE', 3),
	   ('CAGO FRIO', 2);
	   
INSERT INTO BAIRRO (NOME,  ID_CIDADE) 
VALUES ('GUARANHUS', 1),
	   ('SANTA MONICA POPULAR',1),
	   ('JARDIM EUROPA', 3),
	   ('JARDIM CAMBURI', 2),
	   ('PAMPULHA',4),
	   ('CENTRO',5);
	   
INSERT INTO LOGRADOURO (ABREVIACAO,NOME)
VALUES ('R','RUA'),
	   ('AV', 'AVENIDA');
	
INSERT INTO ENDERECO (ENDERECO, NUMERO, CEP, COMPLEMENTO, ID_ESTADO, ID_LOGRADOURO)
VALUES ('Rua Jorge Amado', 281, '97065-211', 'Sala 502', 1, 1),
	   ('Avenida Moacir Braga Coutinho', 1500, '68905-820', 'Galpão 3', 2, 2),
	   ('Rua Perimetral Quatro', 140, '68905-820', 'Apto. 802', 3, 1),
	   ('Rua José Silvério da Silva', 3000, '74953-610', 'Apto. 1002', 4, 1),
	   ('Rua Antônio Escorsin', 281, '64033-550', 'Apto. 202', 1, 1),
	   ('Rua José Silvério da Silva', 4254, '74730515', 'Sala 21',2, 1),
	   ('Rua Pedro Ardêmio Hilgert', 123, '92310-560', 'Hangar 5',3, 1),
	   ('Rua Ary Lopes Moreira', 2837, '27524-112', 'Galpão 66',4, 1),
	   ('Rua Cristalina', 1928, '26298-213', 'Apto. 304',1, 1),
	   ('Rua Joaquim Mesquita Filho', 183, '58037-205', 'Sala 111', 2, 1);

INSERT INTO ENDERECO_PESSOA (ID_ENDERECO, ID_PESSOA)
VALUES 	(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(9, 9),
		(10, 10);

INSERT INTO MARCA (MARCA) 
VALUES ('Mercedes-Benz'), 
	   ('Ford'), 
	   ('Volkswagen'), 
	   ('Volvo'), 
	   ('Scania');
	   
INSERT INTO STATUS_VEICULO (STATUS) 
VALUES ('DISPONIVEL'), 
	   ('MANUTENCAO'), 
	   ('EM TRANSPORTE');
	   
INSERT INTO STATUS_TRANSPORTE (STATUS) 
VALUES ('CONCLUIDO'), 
	   ('EM ANDAMENTO'), 
	   ('CANCELADO'), 
	   ('SOLICITADO');
	   
INSERT INTO COMBUSTIVEL (COMBUSTIVEL) 
VALUES ('GASOLINA'), 
	   ('ALCOOL'), 
	   ('GAS'),
	   ('DIESEL'),
	   ('FLEX');

INSERT INTO COR (COR) 
VALUES ('VERMELHO'), 
	   ('AZUL'), 
	   ('VERDE'), 
	   ('PRETO'), 
	   ('BRANCO'), 
	   ('PRATA'), 
	   ('AMARELO'), 
	   ('LARANJA'), 
	   ('CINZA');

INSERT INTO EIXO (QUANTIDADE_EIXO) 
VALUES (2), 
	   (3),
	   (4), 
	   (6);

INSERT INTO CATEGORIA_VEICULO (CATEGORIA)
VALUES ('CARRO'),
	   ('CAMINHAO'),
	   ('CARRETA'),
	   ('ONIBUS'),
	   ('VAN');
	   
INSERT INTO TIPO_CARGA (TIPO)
VALUES ('CONSTRUCAO'),
	   ('FRIGORIFICA'),
	   ('VEICULO'),
	   ('FRAGIL'),
	   ('MEDICAMENTOS'),
	   ('MUDANCA'),
	   ('ENCOMENDAS');
	   
INSERT INTO MODELO (MODELO, ANO, PESO, ALTURA, LARGURA, COMPRIMENTO, ID_MARCA, ID_EIXO, ID_COR)
VALUES ('Sable LS 3.0 V6', '2015', 16000.00, 2.6, 4.4, 18.15, 1, 2, 1),
	   ('Javali 3.0', '2016', 25000.00, 2.6, 4.4, 18.15, 2, 3, 2),
	   ('SE-500', '2014', 14000.00, 2.6, 4.4, 18.15, 1, 1, 3),
	   ('T-100 3.4 V6', '2012', 16000.00, 2.6, 4.4, 18.15, 3, 1, 4),
	   ('Master 4.0', '2011', 27000.00, 2.6, 4.4, 18.15, 3, 3, 5),
	   ('Esprit S-4 2.2 16V', '2016', 18000.00, 2.6, 4.4, 18.15, 5, 2, 6),
	   ('Previa LX 2.5', '2015', 20000.00, 2.6, 4.4, 18.15, 4, 2, 7),
	   ('AUMARK 3.50AK', '2011', 22000.00, 2.6, 4.4, 18.15, 1, 3, 8),
	   ('9000 CD', '2011', 22000.00, 2.6, 4.4, 18.15, 1, 3, 9),
	   ('PANTANAL 3.0', '2013', 14000.00, 2.6, 4.4, 18.15, 2, 2, 4);

INSERT INTO VEICULO (NOME, CHASSI, PLACA, ID_STATUS, ID_COMBUSTIVEL, ID_CATEGORIA, ID_MODELO)
VALUES ('Tempest', '9UK64ED50D0015277', 'MUN-6778', 2, 1, 2, 1),
       ('Storm', '9UK64ED50D0015280', 'MZY-2035', 2, 2, 2, 2),
	   ('Passaro', '9UK64ED50D0015294', 'AJH-3703', 1, 3, 2, 3),
	   ('Maneiro', '9UK64ED50D0015313', 'MQM-5362', 1, 4, 2, 4),
	   ('Veiculo Doidão', '9UK64ED50D0015327', 'NDS-5037', 1, 5, 1, 5),
	   ('Maquina de Misterios', '9UK64ED50D0015330', 'LXT-2999', 1, 1, 3, 6),
	   ('Caçador de Bruxas', '9UK64ED50D0015344', 'NAK-6648', 3, 2, 3, 7),
	   ('Vermelinho', '9UK64ED50D0015358', 'HUC-4058', 3, 3, 2, 8),
	   ('Rosinha', '9UK64ED50D0015361', 'MZQ-6007', 3, 4, 2, 9),
	   ('Soha', '9UK64ED50D0015473', 'HQE-4878', 3, 5, 2, 10);

INSERT INTO MOTORISTA_VEICULO(DATA_INICIO, DATA_FIM, ID_MOTORISTA, ID_VEICULO)
VALUES ('2018-10-15', '2018-10-30', 1, 1),
	   ('2018-09-1', '2018-09-07', 2, 3),
	   ('2018-10-7', '2018-10-21', 3, 4),
	   ('2018-11-1', '2018-11-14', 4, 5);

INSERT INTO TRANSPORTE (VALOR_CONTRATO, DATA_INICIO, DATA_FIM, ID_STATUS, ID_TIPO_CARGA, ID_CLIENTE, ID_FUNCIONARIO, ID_VEICULO, ID_ENDERECO_ORIGEM, ID_ENDERECO_DESTINO)
VALUES (1000.00, '2018-01-01', '2018-02-02', 1, 2, 7, 1, 1, 1, 2),
	   (5000.00, '2018-04-04', '2018-06-06', 2, 3, 8, 2, 2, 2, 3),
	   (4500.00, '2018-06-06', '2018-07-07', 1, 1, 9, 3, 3, 1, 4),
	   (8000.00, '2018-06-06', '2018-08-08', 1, 3, 10, 4, 4, 2, 5),
	   (7200.00, '2018-07-07', '2018-08-08', 3, 4, 7, 5, 5, 4, 5),
	   (3500.00, '2018-08-08', '2018-09-09', 2, 2, 7, 1, 1, 1, 3);
