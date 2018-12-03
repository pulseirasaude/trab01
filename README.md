# TRABALHO 01:  Carga Pesada
Trabalho desenvolvido durante a disciplina de BD1 no perído 2018/2 com o Professor Moisés Omena

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Wallace Silva de Paula: wallacedpaula97@gmail.com<br>
Leonardo Sena: leosena1995@gmail.com<br>
Willian Vaneli: willianvaneli@gmail.com<br>
Matheus Aguiar: aguiar007ax@gmail.com<br>


### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados Carga Pesada 
<br>e motivação da escolha realizada. <br>

> Devido as novas necessidades do mercado onde empresas tem multiplicado clientes e encurtado distâncias comerciais, o serviço de transporte tem aumentado sua importância e necessidade. Com o aumento das frotas de veiculos é impossível controlar apenas manualmente e com papeis assim o projeto Carga Pesada surge como uma forma de informatizar o gerenciamento de frotas veiculares.


### 3.MINI-MUNDO<br>

> Sistema que possibilita o gerenciamento frotas veicular tanto como um sistema completo de uma empresa de transporte quanto como um subsistema de uma empresa que tem uma frota veicular. O sistema visa gerenciar todos dados pertinentes ao veiculo como: dados do veiculo, seguro, financiamento, tipo, modelo, motorista. O sistema também faz o gerenciamento dos serviços prestados e controle de clientes.


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![Alt text](https://github.com/pulseirasaude/trab01/blob/master/Mockups/download.png?raw=true "Title")
[Arquivo PDF do Protótipo Balsamiq feito para o projeto Carga Pesada](https://github.com/pulseirasaude/trab01/blob/master/Mockups/Prototipo.pdf?raw=true "Carga Pesada")


#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa Carga Pesada precisa inicialmente dos seguintes relatórios:
* Relarótio de veiculos disponíveis incluindo as seguintes informações: id do veiculo, nome do veiculo, categoria do veiculo e status do veiculo.
* Relatório de motoristas e suas CNHs incluindo as seguintes informações: id do motorista, nome do motorista, numero da cnh, categoria e data de vencimento da mesma.
* Relatório de salários dos funcionários incluindo as seguintes informações: nome do funcionário, salário do funcionário.
* Relatório informando a quantidades de serviços por tipo de carga e faturamento de cada tipo incluindo as seguintes informações: tipo da carga e a quantidade de serviços do tipo de carga e valor obtido pelos serviços.
* Relatório de serviço por periodo incluindo as seguintes informações: id serviço, cliente , status.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
[Exemplo de Tabela de dados do Carga Pesada](https://github.com/pulseirasaude/trab01/blob/master/tab_un_1.ods "Tabela - Carga Pesada")
    
>## Marco de Entrega 01 em: (06/09/2018)<br>

### 5.MODELO CONCEITUAL<br>
        
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/Conceito_CargaPesado.png?rawtrue "Modelo Conceitual")        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Controle de frequência de Alunos
    [Grupo02]: Aquário inteligente

#### 5.2 DECISÕES DE PROJETO
    a) Tabela Enderecos: Optamos em nosso projeto por usar uma tabela com os endereços de cliente, por que um cliente ou funcionário poderá ter mais de um endereço vinculado ao seu cadastro, portanto no atributo ID_CLIENTE E ID_FUNCIONARIO temos a relação com cliente ou funcionário.
    b) Tabela de Endereco_Serviço: Optamos por criar um endereço para cada serviço pos um cliente pode solicitar o transporte de um endereço diferente do endereço cadastrado em seu registro.
    c) O campo TIPO dentro de Endereco_Servico informa se o endereço é o de origem ou o de destino dentro do serviço realizado.
    d) Na tabela Contato decidimos colocar 3 espaços para telefone de vido a empresa ter mais de um responsável pela área.
    e) Na tabela Contato da mesma forma que na tabela Enderecos temos os atributos ID_CLIENTE E ID_FUNCIONARIO onde temos a relação com cliente ou funcionário.
    f) Na tabela Financiamento não colocamos as informações de parcelas restantes devido informação poder ser calculada através dos atributos PARCELAS_TOTAIS E PARCELAS_PAGAS.
    g) Decidimos criar a tabela MODELO para distinguir variações entre modelos de um mesmo tipo de veiculo, essas informações sobre o veiculo são importantes para as notas fiscais.

>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    PESSOA: Tabela que guarda nome e data de cadastro
    id: Id da pessoa cadastrada que identifica se a pessoa é física ou jurídica 
    nome: Nome da pessoa cadastrada
    data_cadastro: Data que foi feito o cadastro

    PESSOA_FISICA: tabela que armazena as informações relativas a pessoa física
    id: id da pessoa fisica com relação a tabela PESSOA	
    cpf: cpf da pessoa fisica cadastrada
    data_nascimento: Data de nascimento da pessoa fisica cadastrada
    sexo: Tipo do sexo ‘masculino’ ou ‘feminino’ da pessoa fisica cadastrada
    id_pessoa: id da pessoa fisica cadastrada

    PESSOA_JURIDICA: Tabela que armazena as informações relativas a pessoa jurídica
    id: id da pessoa jurídica com relação a tabela PESSOA
    cnpj: cnpj da pessoa jurídica
    razao_social: 
    id_pessoa: id da pessoa jurídica cadastrada

    FUNCIONARIO: Tabela que armazena as informações relativas a os funcionários
    id: id do funcionário
    cargo: cargo que o funcionário ocupa
    salario: salario do funcionário
    id_pessoa_fisica: id da pessoa fisica

    CATEGORIA_CNH: Tabela que armazena as categorias do cnh
    id: id do cnh
    categoria: categoria que tal cnh pertence

    MOTORISTA: Tabela que armazena as informações relativas a os motoristas
    id: id do motorista
    numero_cnh: numero do cnh do motorista
    data_vencimento: campo que armazena a data de vencimento do cnh
    id_categoria_cnh: campo que identifica a categoria do cnh com relação a tabela CATEGORIA_CNH
    id_funcionario: campo que idêntica o funcionário com relação a tabela FUNCIONARIO

    TIPO_CONTATO: Tabela que armazena as informações de contato
    id: id do contato
    tipo: tipo do contado (e-mail, telefone...)

    CONTATO: Tabela que armazena as informações relativas ao contato de clientes
    Id: id do contato
    Contato: campo que armazena o contato
    id_tipo: campo que armazena o tipo de contato com relação a tabela TIPO_CONTATO
    id_pessoa: campo que armazena o id do tipo de pessoa(fisica ou jurídica)

    ESTADO: Tabela que armazena as informações relativas a os estados do país
    id: id do estado
    sigla: sigla do estado
    nome: nome do estado

    CIDADE: Tabela que armazena as informações relativas as cidade do estado
    id: id da cidade
    nome: nome da cidade
    id_estado: campo que armazena o id do estado com relação a tabela ESTADO

    BAIRRO: Tabela que armazena as informações relativas a os bairros
    id: id do bairro
    nome: nome do bairro
    id_cidade: campo que armazena o id da cidade com relação a tabela CIDADE

    LOGRADOURO: tabela que armazena as informações relativas a o logradouro
    id: id do logradouro
    abreviacao: abreviação do logradouro
    nome: nome do logradouro

    ENDERECO: Tabela que armazena as informações relativas a o endereço
    id: id do endereço
    endereço: endereço do local
    numero: numero do local
    cep: cep do local
    complemento: complemente relativo do enedreço
    id_estado: id do estado com relação a tabela ESTADO
    id_logradouro: id do logradouro com relação a tabela LOGRADOURO

    ENDERECO_PESSOA: Endereço do pessoa
    id: id do endereço do pessoa
    id_endereco_ id do endereço com relação a tabela ENDERECO
    id_pessoa: id da pessoa com relação a tabela PESSOA

    CATEGORIA_VEICULO: Categoria do veiculo
    id: id da categoria de veiculo
    categoria: categoria que o veiculo pertence

    MARCA: tabela que armazena informações da marca do veiculo
    id: id da marca
    marca: campo que armazena a marca do veiculo

    EIXO: Tabela que armazena informações relativas a quantidade de eixos
    id: id do eixo
    quantidade_eixo: quantidade de eixos
    
    COR: tabela que armazena informações da cor dos veículos
    id: id da cor
    cor: campo que as cores

    MODELO: Tabela que armazena informações do modelo do veiculo
    id: id do moelo
    modelo: nome do modelo do veiculo
    ano: ano do modelo do veiculo
    peso: peso do veiculo
    altura: altura do veiculo
    largura: largura do veiculo
    comprimento: comprimento do veiculo
    id_marca: campo que armazena o id da marca com relação a tabela MARCA
    id_eixo: campo que armazena o id do eixo com relação a tabela EIXO
    id_cor: campo que armazena o id da cor com relação a tabela COR

    STATUS_VEICULO: Tabela que armazena informações do status dos veículos
    id: id do veiculo
    status: campo que armazena o status do veiculo

    COMBUSTIVEL: Tabela de combustíveis
    id: id do combustível
    combustível: campo que armazena o tipo de combustível

    VEICULO: Tabela que armazena informações dos veículos
    id: id do veiculo
    nome: nome do veiculo
    chassi: chassi do veiculo
    placa: placa do veiculo
    id_status: campo que armazena o id do status do veiculo com relação a tabela STATUS_VEICULO
    id_combustivel: campo que armazena o id do combustível com relação a tabela COMBUSTIVEL
    id_categoria: campo que armazena o id da categoria com relação a tabela CATEGORIA_VEICULO
    id_modelo: campo que armazena o id do modelo com relação a tabela MODELO

    MOTORISTA_VEICULO: Tabela que armazena informações dos motorista e veiculo
    id: id de motorista_veiculo
    data_inicio: data que se inicia o serviço contratado
    data_fim: data que finaliza o serviço contratado
    id_motorista: campo que armazena o id do motorista com relação a tabela MOTORISTA
    id_veiculo: campo que armazena o id do veiculo com relação a tabela VEICULO

    STATUS_TRANSPORTE: Tabela que armazena as informações do status do transporte
    Id: id do status
    Status: campo que armazena informações sobre o status

    TIPO_CARGA: Tabela que armazena o tipo de carga
    Id: id do tipo de carga
    tipo: campo que armazena o tipo de carga que esta sendo transportado

    TRANSPORTE: Tabela que armazena informações relativas a o transporte 
    id: id do transporte
    valor_contrato: valor do contrato
    data_inicio: data de inicio do transporte
    data_fim: data de finalização do transporte
    id_status: campo que armazena o tipo de status com relação a tabela STATUS_TRANSPORTE
    id_tipo_carga: campo que armazena o tipo de carga com relação a tabela TIPO_CARGA
    id_cliente: campo que armazena o id do cliente com relação a tabela PESSOA
    id_funcionario: campo que armazena o id do funcionário com relação a tabela FUNCIONARIO
    id_veiculo: campo que armazena o id do veiculo com relação a tabela VEICULO
    id_endereco_origem: campo que armazena o endereço de origem com relação a tabela ENDERECO
    id_endereco_destino: campo que armazena o endereço de destino com relação a tabela ENDERECO

   
    
    
### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/modelo_logico.png?raw=true "Modelo Lógico") 

### 7	MODELO FÍSICO<br>
        
[Script de Criação  Tabelas](https://github.com/pulseirasaude/trab01/blob/master/scripts/create_table_v2.sql "Script de Criação  Tabelas")           
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

[Script de Inserção de Dados nas Tabelas](https://github.com/pulseirasaude/trab01/blob/master/scripts/insert_table_v2.sql "Script de Inserção de Dados nas Tabelas")

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
       
[Script de Criação e Inserção de Dados nas Tabelas](https://github.com/pulseirasaude/trab01/blob/master/scripts/create_inserte_table.sql "Script de Criação e Inserção de Dados nas Tabelas")

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        
[Script de Deletar Tabelas](https://github.com/pulseirasaude/trab01/blob/master/scripts/drop_table_script_v2.sql "Script de Deletar Tabelas")
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
   OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
   [Script de Select Tables](https://github.com/pulseirasaude/trab01/blob/master/scripts/select_table.sql "Script de Select Tables")<br>
   
   Pessoas <br>
   ![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_pessoa.PNG?raw=true "Title") <br>
   
   Pessoa Fisica <br>
   ![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_ps_fisica.PNG?raw=true "Title") <br>
    <br>
    
   Pessoa Juridica <br> 
   ![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_ps_juridica.PNG?raw=true "Title") <br>
    
   Tipo Contato <br>
    ![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_tipo_contato?raw=true "Title") <br>

Contato <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_contato.PNG?raw=true "Title") <br>

Endereço por pessoa <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_endereço_pessoa.PNG?raw=true "Title") <br>

Endereço <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_ps_juridica.PNG?raw=true "Title") <br>

Logradouro <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_log.PNG?raw=true "Title") <br>

Estado <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_estado.PNG?raw=true "Title") <br>

Cidade <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_cidades.PNG?raw=true "Title") <br>

Bairro <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_bairros.PNG?raw=true "Title") <br>

Funcionario <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_funcionarios.PNG?raw=true "Title") <br>

Motoristas <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_motorista.PNG?raw=true "Title") <br>

Tipo CNH <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_catego_cnh.PNG?raw=true "Title") <br>

Veiculo por Motorista <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_motorista_veiculo.PNG?raw=true "Title") <br>

Veiculo <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_veiculos.PNG?raw=true "Title") <br>

Categoria de veiculos <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_catego_veiculos.PNG?raw=true "Title") <br>

Combustivel <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_combustivel.PNG?raw=true "Title") <br>

Status Veiculo <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_sta_veiculo.PNG?raw=true "Title") <br>

Modelo <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_modelo.PNG?raw=true "Title") <br>

Cor <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_cor.PNG?raw=true "Title") <br>

Eixos <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_eixos.PNG?raw=true "Title") <br>

Marca <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_marca.PNG?raw=true "Title") <br>

Transporte <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_transporte.PNG?raw=true "Title") <br>

Status <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_sta_transporte.PNG?raw=true "Title") <br>

Tipo de carga <br>
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/Query01_tipo_carga.PNG?raw=true "Title") <br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
   [Script com filtro Where](https://github.com/pulseirasaude/trab01/blob/master/scripts/where_script.sql "Script com filtro Where")
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
    
   [Script com Operadores](https://github.com/pulseirasaude/trab01/blob/master/scripts/script_operadores.sql "Script com Operadores")

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.
   
   [Script com Like e date](https://github.com/pulseirasaude/trab01/blob/master/scripts/consulta_like_date.sql "Script com Like e date")

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
   
   [Script de atualização e exclusão de dados](https://github.com/pulseirasaude/trab01/blob/master/scripts/update_delete.sql "Script de atualização e exclusão de dados")

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
        
   [Script consulta com join e ordenação](https://github.com/pulseirasaude/trab01/blob/master/scripts/jconsulta_join.sql "Script consulta com join e ordenação")
        
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

   [Script consulta com groupby e funções de agrupamento](https://github.com/pulseirasaude/trab01/blob/master/scripts/consulta_grouby.sql "Script consulta com groupby e funções de agrupamento")
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

[Script consulta com left e right join](https://github.com/pulseirasaude/trab01/blob/master/scripts/consulta_left_right.sql "Script consulta com left e right join")

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
        
   [Script consulta self join e view](https://github.com/pulseirasaude/trab01/blob/master/scripts/consulta_selfjoin_view.sql "Script consulta self join e view")
        
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
   [Script subconsulta](https://github.com/pulseirasaude/trab01/blob/master/scripts/subconsulta.sql "Script subconsulta")

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


