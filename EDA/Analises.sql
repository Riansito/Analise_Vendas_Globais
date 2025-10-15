/*
1- Desempenho Geral
a- Qual é o faturamento total, custo total e lucro líquido da empresa?
b- Qual foi o crescimento de receita ao longo dos meses e anos?
c- Qual a margem média de lucro (%) por período?
*/
select * from vendas_exterior
  --1a
select
  round(sum(revenue)::numeric, 2) as faturamentos,
  round(sum(cost)::numeric, 2) as custo_total,
  round(sum(revenue - cost)::numeric, 2) as lucro
from vendas_exterior;


  --1b
with faturamento_meses as(
  select
    year as ano,
    extract(month from sale_date) as mes_numero,
    month as mes,
    round(sum(revenue)::numeric, 2) as faturamento,
    lag(round(sum(revenue)::numeric, 2)) over (order by year, extract(month from sale_date)) as faturmaneto_anterior
  from vendas_exterior
  group by ano, mes_numero, mes
  order by ano, mes_numero
) select 
  ano, 
  mes, 
  faturamento,
  round(((faturamento - faturmaneto_anterior) / faturmaneto_anterior)*100::numeric, 2) as MoM
 from faturamento_meses;

with faturamento_anos as (
  select 
    year as ano,
    round(sum(revenue)::numeric, 2) as faturamento,
    lag(round(sum(revenue)::numeric, 2)) over (order by year) as faturmaneto_anterior
  from vendas_exterior
  group by ano
)
select 
  ano, 
  faturamento,
  round(((faturamento - faturmaneto_anterior) / faturmaneto_anterior)*100::numeric, 2) as YoY
from faturamento_anos;


--1c
select 
  year as ano,
  extract(month from sale_date) as mes_numero,
  month as mes,
  sum(revenue - cost) / sum(revenue) 
from vendas_exterior
group by ano, mes_numero, mes
order by ano, mes_numero;


/*
2-Produtos e Rentabilidade

a- Quais categorias e subcategorias geram maior receita e margem de lucro?
b- Quais produtos possuem alto volume, mas baixa margem (possíveis ajustes de preço)?
c- Existe algum produto com baixo volume, mas alta margem (potencial de expansão)?
*/

--2a
select 
  product_category,
  sum(revenue) as faturamento,
  round((sum(revenue - cost)/sum(revenue))::numeric, 2) as margem_lucro
from vendas_exterior
group by product_category
order by faturamento desc, margem_lucro desc;

select 
  product_category,
  sub_category,
  sum(revenue) as faturamento,
  round((sum(revenue - cost)/sum(revenue))::numeric, 2) as margem_lucro
from vendas_exterior
group by product_category, sub_category
order by faturamento desc, margem_lucro desc;

--2b e 2c
select 
  product_category,
  sub_category,
  sum(quantity) as volume_compras,
  round((sum(revenue - cost)/sum(revenue))::numeric, 2) as margem_lucro
from vendas_exterior
group by product_category, sub_category
order by volume_compras desc, margem_lucro desc;


/*
3-Análise Regional

a- Quais estados concentram maior volume de vendas, receita e lucro?
b- Há regiões com baixo desempenho ou margem negativa?
c- Como se distribui o lucro médio por estado?
*/

--3a
select 
  country as pais,
  sum(quantity) as volume_compras,
  sum(revenue) as faturamento,
  sum(revenue - cost) as lucro,
  round((sum(revenue - cost)/sum(revenue))::numeric, 2) as margem_lucro,
  row_number() over(order by  sum(quantity) desc, sum(revenue) desc,  sum(revenue - cost) desc)
from vendas_exterior
group by pais
order by volume_compras desc, faturamento desc, lucro desc

--3b
select 
  country as pais,
  state as estado,
  sum(quantity) as volume_compras,
  sum(revenue) as faturamento,
  sum(revenue - cost) as lucro,
  round((sum(revenue - cost)/sum(revenue))::numeric, 2) as margem_lucro,
  row_number() over(order by  sum(quantity) desc, sum(revenue) desc,  sum(revenue - cost) desc)
from vendas_exterior
group by pais, estado
order by volume_compras desc, faturamento desc, lucro desc

--3c
select 
  country as pais,
  state as estado,
  avg(revenue - cost) as lucro_medio
from vendas_exterior
group by pais, estado
order by lucro_medio desc


/*
4- Perfil de Clientes

a- Qual faixa etária é responsável pelo maior volume de compras?
b- Há diferenças significativas no comportamento de compra entre homens e mulheres?
c- Quais categorias de produto cada perfil (idade/gênero) mais consome?
*/

--4a
select 
  case
    when customer_age between 17 and 27  then 'jovem'
    when customer_age > 27 and customer_age <= 57 then 'adulto'
    else 'velho'
  end as faixa_etaria_idade,
  sum(quantity) as volume_compras
from vendas_exterior
group by faixa_etaria_idade


-- 4b
select 
  customer_gender as genero,
  sum(quantity) as volume_compras,
  sum(revenue) as faturamento,
  sum(revenue - cost) as lucro,
  sum(revenue - cost) / sum(revenue) as margem_de_lucro
from vendas_exterior
group by genero

-- 4c
select 
  customer_gender as genero,
  product_category as categoria,
  sum(quantity) as volume_compras
from vendas_exterior
group by genero, categoria

select 
  case
    when customer_age between 17 and 27  then 'jovem'
    when customer_age > 27 and customer_age <= 57 then 'adulto'
    else 'velho'
  end as faixa_etaria_idade,
  product_category as categoria,
  sum(quantity) as volume_compras
from vendas_exterior
group by faixa_etaria_idade, categoria


