SELECT PESSOA.NOME, TRANSPORTE.ID AS TRANSPORTE_PEDIDO FROM TRANSPORTE
RIGHT OUTER JOIN PESSOA
ON (TRANSPORTE.ID_CLIENTE = PESSOA.ID);

SELECT VEICULO.NOME, TRANSPORTE.ID AS VEICULO_SEM_TRANSPORTE FROM TRANSPORTE
RIGHT OUTER JOIN VEICULO
ON (TRANSPORTE.ID_VEICULO = VEICULO.ID);

SELECT PESSOA.NOME, PESSOA_JURIDICA.CNPJ FROM PESSOA
LEFT OUTER JOIN PESSOA_JURIDICA
ON (PESSOA.ID = PESSOA_JURIDICA.ID_PESSOA);

SELECT PESSOA.NOME, PESSOA_FISICA.CPF FROM PESSOA
LEFT OUTER JOIN PESSOA_FISICA
ON (PESSOA.ID = PESSOA_FISICA.ID_PESSOA);

