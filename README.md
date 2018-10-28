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
* Relarótio de veiculos disponíveis incluindo as seguintes informações: id do veiculo, nome do veiculo, tipo do veiculo e status do veiculo.
* Relatório de funcionários disponíveis incluindo as seguintes informações: id do funcionário, nome do funcionário e status do funcionário.
* Relatório de finanças incluindo as seguintes informações: Entradas, saídas e balanço.
* Relatório de veículos alienados: id do veiculo, nome do veiculo, tipo do veiculo, valor parcela e parcelas restantes.
* Relatório de serviço por periodo incluindo as seguintes informações: id serviço, cliente , status.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
[Exemplo de Tabela de dados do Carga Pesada](https://github.com/pulseirasaude/trab01/blob/master/tab_un_1.ods "Tabela - Carga Pesada")
    
>## Marco de Entrega 01 em: (06/09/2018)<br>

### 5.MODELO CONCEITUAL<br>
        
![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/cargaPesada_v3.png?raw=true "Modelo Conceitual")        
    
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
    
    CLIENTE: Tabela que armazena as informações relativas ao cliente
    nome: campo que armazena o nome do cliente.
    cpf: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.
    cnpj: campo que armazena o número de Cadastro de Pessoa Juridica para cada cliente da empresa.
    data_cadastro: campo que armazena a data do cadastro do cliente na empresa.
   
    FUNCIONARIO: Tabela que armazena as informações relativas ao funcionário da empresa.
    nome: campo que armazena o nome do funcionário.
    cpf: campo que armazena o número de Cadastro de Pessoa Física para cada funcionário da empresa.
    cargo: campo que armazena o cargo ocupado pelo funcionário da empresa.
    salario: campo que armazena o salário do funcionário da empresa.
    sexo: campo que armazena o sexo do funcionário da empresa.
    data_cadastro: campo que armazena a data de entrada do funcionário da empresa.
    data_nascimento: campo que armazena a data de nascimento do funcionário da empresa.
    
    MOTORISTA: Tabela que armazena as informações relativas ao motorista da empresa.
    cnh: campo que armazena a identificação da CNH do motorista.
    data_vencimento: campo que armazena o vencimento da CNH.
    categoria: campo que armazena o tipo da CNH.
    id_funcionario: campo que armazena a identificação que relaciona o motorista com suas informações como funcionario.
    
    CONTATO: Tabela que guarda contato do funcionario ou cliente.
    telefone_01: Campo que armazena numero do telefone do funcionario ou cliente. 
    telefone_02: Campo que armazena numero do telefone do funcionario ou cliente.
    telefone_03: Campo que armazena numero do telefone do funcionario ou cliente.
    email: Campo que armazena email do funcionario ou cliente.
      
    ENDERECO: Tabela que guarda endereço do funcionario ou cliente.
    endereco: campo que armazena o nome do endereço.
    logradouro: campo que armazena o logradouro do endereço.
    numero: campo que armazena o número do endereço.
    cep: campo que armazena o cep do endereço.
    complemento: campo que armazena o complemento do endereço.
    cidade: campo que armazena a cidade do endereço.
    estado: campo que armazena o estado do endereço.
       
    CATEGORIA: Tabela que armazena a categoria do veiculo.
    nome: campo que armazena nome da categoria do veiculo.
    modelo: Tabela que guarda modelo do veiculo.
    modelo: campo que armazena o modelo do veiculo.
    marca: campo que armazena a marca do veiculo.
    ano: campo que armazena o ano do veiculo.
    eixo: campo que armazena quantos eixos o veiculo tem.
    peso: campo que armazena o peso do veiculo.
    altura: campo que armazena a altura do veiculo.
    largura: campo que armazena a largura do veiculo.
    comprimento: campo que armazena o comprimento do veiculo.
    cor: campo que armazena a cor do veiculo.
    
    VEICULO: Tabela que guarda informações do veiculo.
    nome: campo que armazena o nome do veiculo.
    chassi: campo que armazena o chassi do veiculo.
    placa: campo que armazena a placa do veiculo.
    status: campo que armazena o status do veiculo.
    combustivel: campo que armazena o tipo do combustivel do veiculo.
    id_categoria: campo que armazena a identificação que relaciona o veiculo com sua categoria.
    id_modelo: campo que armazena a identificação que relaciona o veiculo com seu modelo.
    id_motorista: campo que armazena a identificação que relaciona o veiculo com seu motorista.
    
    SEGURO: Tabela que armazena informações sobre o seguro do veiculo.
    status: campo que armazena status do seguro.
    data_vencimento: campo que armazena data do vencimento de cada parcela do seguro.
    fim_contrato: campo que armazena data do vencimento do contrato do seguro.
    id_veiculo: campo que armazena a identificação que relaciona o seguro com respectivo veiculo.
    
    FINANCIAMENTO: Tabela que armazena informações sobre o financiamento de veiculos.
    valor_parcelas: campo que armazena o valor das parcelas do financiamento.
    parcelas_totais: campo que armazena a quantidade de parcelas do financiamento.
    parcelas_pagas: campo que armazena a quantidade de parcelas pagas do financiamento.
    financiador: campo que armazena o financiador do financiamento.
    id_veiculo: campo que armazena a identificação que relaciona o financiamento com respectivo veiculo.
    
    SERVICO: Tabela que armazena informações sobre serviço.
    status: campo que armazena o status do serviço.
    valor_contrato: campo que armazena o valor do contrato.
    data_inicio: campo que armazena a data inicio do contrato.
    data_fim: campo que armazena a data fim do contrato.
    id_cliente: campo que armazena a identificação que relaciona o serviço com respectivo cliente.
    id_funcionario: campo que armazena a identificação que relaciona o serviço com respectivo funcionario.
    id_veiculo: campo que armazena a identificação que relaciona o serviço com respectivo veiculo.
    id_endereco_origem: campo que armazena a identificação que relaciona o serviço com respectivo endereço de origem.
    id_endereco_destino: campo que armazena a identificação que relaciona o serviço com respectivo endereço de destino.
    
    ENDERECO SERVICO: Tabela que armazena e relaciona os serviços com os seus respectivos endereços.
    tipo: campo que armazena o tipo de endereço (O-Origem / D-Destino)
    id_endereco: campo que armazena o id do endereco.
    
    ENDERECO FUNCIONARIO: Tabela que armazena e relaciona o funconairo com o seu respectivo endereço.
    id_endereco: campo que armazena o id do endereco
    id_funcionario: campo que armazena o id do funcionario.
    
    ENDERECO CLIENTE: Tabela que armazena e relaciona o cliente com o(s) seu(s) respectivo(s) endereço(s).
    id_endereco: campo que armazena o id do endereco.
    id_funcionario: campo que armazena o id do funcionario.
    
    CONTATO FUNCIONARIO: Tabela que armazena e relaciona o funcionario com o seu contato.
    id_contrato: campo que armazena o id do contato.
    id_funcionario: campo que armazena o id do funcionario.
    
    CONTATO CLIENTE: Tabela que armazena e relaciona o o funcionario com o seu contato.
    id_contato: campo que armazena o id do contato.
    id_cliente: campo que armazena o id do cliente.
    
    
### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/pulseirasaude/trab01/blob/master/images/modelo_logico_v2.png?raw=true "Modelo Lógico") 

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
   [Script de Consultas](https://github.com/pulseirasaude/trab01/blob/master/scripts/consultas.sql "Script de Consultar  Tabelas") 
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
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


