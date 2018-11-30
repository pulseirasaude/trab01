SELECT TRANSPORTE.ID, VALOR_CONTRATO, DATA_INICIO, DATA_FIM, STATUS FROM TRANSPORTE
INNER JOIN STATUS_TRANSPORTE
ON (TRANSPORTE.ID_STATUS = STATUS_TRANSPORTE.ID)
WHERE STATUS_TRANSPORTE.STATUS IN (
	SELECT STATUS FROM STATUS_TRANSPORTE
	WHERE STATUS != 'CONCLUIDO'
);

SELECT PESSOA.NOME, CARGO, SALARIO, SEXO FROM FUNCIONARIO
INNER JOIN PESSOA_FISICA
ON (FUNCIONARIO.ID_PESSOA_FISICA = PESSOA_FISICA.ID)
INNER JOIN PESSOA
ON (PESSOA_FISICA.ID_PESSOA = PESSOA.ID)
WHERE CARGO IN (
	SELECT CARGO FROM FUNCIONARIO
	WHERE CARGO != 'MOTORISTA'
);

SELECT NOME, PLACA, STATUS FROM VEICULO
INNER JOIN STATUS_VEICULO
ON (VEICULO.ID_STATUS = STATUS_VEICULO.ID)
WHERE STATUS IN (
	SELECT STATUS FROM STATUS_VEICULO
	WHERE STATUS = 'DISPONIVEL' 
);
