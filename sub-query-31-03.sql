# Subquery é uma consulta dentro de outra consulta. É um outro método de juntar tabelas.

select NOME_DO_PRODUTO, PRECO_DE_LISTA FROM TABELA_DE_PRODUTOS 
WHERE PRECO_DE_LISTA <
(SELECT AVG(PRECO_DE_LISTA) FROM TABELA_DE_PRODUTOS);

# Notas fiscais emitidas pelo vendedor Márcio Almeida

select * from notas_fiscais where matricula = (
select matricula from tabela_de_vendedores where nome = "Márcio Almeida Silva");

select * from notas_fiscais as NF
inner join tabela_de_vendedores as TV on NF.MATRICULA = TV.MATRICULA
WHERE NOME = "Márcio Almeida Silva";