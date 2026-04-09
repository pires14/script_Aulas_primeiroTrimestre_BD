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

#Manipular a data (ano e mês)
select NF.CPF,
date_format(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA, #A PORCENTAGEM SERVE PARA SELECIONAR APENAS O ANO E MÊS
#%y - APENAS 15, E SEM OS 2 PRIMEIROS DIGITOS E %M RETORNA O MÊS POR ESCRITO.
INF.QUANTIDADE 
from notas_fiscais as NF 
inner join itens_notas_fiscais as INF 
on NF.NUMERO = INF.NUMERO;

#Soma para obter a quantidade total
select NF.CPF,
date_format(NF.DATA_VENDA, '%Y-%m') as DATA_VENDA, #A PORCENTAGEM SERVE PARA SELECIONAR APENAS O ANO E MÊS
#%y - APENAS 15, E SEM OS 2 PRIMEIROS DIGITOS E %M RETORNA O MÊS POR ESCRITO.
SUM(INF.QUANTIDADE) 
from notas_fiscais as NF 
inner join itens_notas_fiscais as INF 
on NF.NUMERO = INF.NUMERO GROUP BY NF.CPF, DATA_VENDA;

#Obter o volume de compra da tabela de clientes

