
insert into CATEGORIA (ID,NOME) values
	(1,'Caminhao 2 eixos'),
	(2,'Caminhao 3 eixos'),
	(3,'Caminhao 4 eixos'),
	(4,'Mini Van'),
	(5,'Seda');
	
insert into ESTADO (SIGLA,NOME) VALUES 
	('ES', 'ESPIRITO SANTO'),
	('RJ', 'RIO DE JANEIRO'),
	('MG','MINAS GERAIS'),
	('SP','SÃO PAULO');
	
INSERT INTO CIDADE(NOME, ID_ESTADO) VALUES
	('VILA VELHA',1),
	('VITORIA',1),
	('SAO PAULO',4),
	('BELO HORIZONTE', 3),
	('CAGO FRIO', 2);
	
INSERT INTO BAIRRO (NOME,  ID_CIDADE) VALUES 
	('GUARANHUS', 1),
	('SANTA MONICA POPULAR',1).
	('JARDIM EUROPA', 3),
	('JARDIM CAMBURI', 2),
	('PAMPULHA',4),
	('CENTRO',5);
	
INSERT INTO LOGRADOURO(ABREVIACAO,NOME) VALUES 
	('RUA','RUA'),
	('AV', 'AVENIDA');


			
