create database sucos_vendas;

#USO DA CONDIÇÃO DISTINCT:

select distinct embalagem, tamanho from tabela_de_produtos;

select embalagem, tamanho from tabela_de_produtos where sabor = 'Laranja';

select distinct embalagem, tamanho, sabor, preco_de_lista from tabela_de_produtos where sabor = 'Laranja';

-- Quais os bairros do Rio de Janeiro que posseum clientes?
select distinct bairro from tabela_de_clientes where cidade = 'Rio de Janeiro';

select distinct bairro, cidade, estado from tabela_de_clientes where cidade = 'Rio de Janeiro';

#USO DA CONDIÇÃO LIMIT:

select * from tabela_de_produtos limit 5;

-- Quais as primeiras 10 vendas do dia 01/01/2017

select * from notas_fiscais where data_venda = '2017-01-01' limit 10;

select * from notas_fiscais where data_vendas = '2017-01-01' limit 5,10;


