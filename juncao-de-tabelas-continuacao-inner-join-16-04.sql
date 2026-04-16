# Escrever o enunciado






use sucos_vendas;

#Seleção das colunas de interesse
select * from tabela_de_clientes;
select * from itens_notas_fiscais;

select * from notas_fiscais as NF 
inner join itens_notas_fiscais as INF 
on NF.NUMERO = INF.NUMERO;

#Seleção das colunas de interesse
select NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE from notas_fiscais as NF 
inner join itens_notas_fiscais as INF 
on NF.NUMERO = INF.NUMERO;

#A PORCENTAGEM SERVE PARA SELECIONAR APENAS O ANO E MÊS
#%y - APENAS 15, E SEM OS 2 PRIMEIROS DIGITOS E %M RETORNA O MÊS POR ESCRITO.
#%Y - O ANO COM OS 4 DÍGITOS e %m RETORNA O NÚMERO DO MÊS.
#Manipular a data (ano e mês)
SELECT NF.CPF, TC.NOME,
SUM(TC.VOLUME_DE_COMPRA) AS VOLUME_DE_COMPRA,
DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS DATA_VENDA, 
SUM(INF.QUANTIDADE) AS QUANTIDADE
FROM notas_fiscais AS NF 
INNER JOIN itens_notas_fiscais AS INF 
ON NF.NUMERO = INF.NUMERO INNER JOIN tabela_de_clientes AS TC
ON TC.CPF = NF.CPF GROUP BY NF.CPF, DATA_VENDA;

#Obter o volume de compra da tabela de clientes
select * from tabela_de_clientes;

