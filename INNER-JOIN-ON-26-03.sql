use sucos_vendas;

#Juntando Tabelas e Consultas:

select * from tabela_de_vendedores;
select * from notas_fiscais;

#O inner não é necessário, mas pode utilizar.
select * from tabela_de_vendedores as TV 
inner join notas_fiscais as NF on TV.MATRICULA = NF.MATRICULA;

#Quantas notas fiscais cada vendedor emitiu?
select TV.MATRICULA, TV.NOME, count(*) as TOTAL_NF from tabela_de_vendedores as TV inner join notas_fiscais as NF
on TV.MATRICULA = NF.MATRICULA group by TV.MATRICULA, TV.NOME;

/* Obtenha o faturamento anual da empresa,
levando em consideração que o valor financeiro das vendas
é obtido pela multiplicação da quantidade pelo preço*/

select * FROM notas_fiscais as NF inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

select YEAR(NF.DATA_VENDA)AS ANO, sum(INF.QUANTIDADE * INF.PRECO) FROM NOTAS_FISCAIS AS NF
INNER JOIN itens_notas_fiscais AS INF ON NF.NUMERO = INF.NUMERO GROUP BY ANO;

