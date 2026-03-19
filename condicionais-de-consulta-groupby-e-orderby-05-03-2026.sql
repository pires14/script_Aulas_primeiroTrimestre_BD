use sucos_vendas;

# Utilizando ORDER BY:

select * from tabela_de_produtos;
select * from tabela_de_produtos order by PRECO_DE_LISTA, embalagem;

select * from tabela_de_produtos order by PRECO_DE_LISTA desc;

-- Qual ou quais foram as maiores vendas do produto 
-- "Linha Refrescante - 1 Litro - Morango/Limão"
-- em quantidade e preço?

select * from tabela_de_produtos where nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limão';
-- código 1101035
select * from itens_notas_fiscais where codigo_do_produto = 1101035 order by QUANTIDADE desc, preco desc;

# Agrupando os resultados (GROUP BY):

select estado, sum(limite_de_credito) as preco_total from tabela_de_clientes group by estado;