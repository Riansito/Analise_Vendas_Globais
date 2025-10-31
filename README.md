
# 🧩 Análise de Vendas — SQL + Power BI

## 📖 Introdução

Este projeto tem como objetivo analisar o desempenho de uma empresa de comércio internacional, avaliando **receita, custos, lucratividade, comportamento de clientes e performance regional**.
A análise foi conduzida integralmente em **SQL (PostgreSQL)**, com a construção de um dashboard interativo no **Power BI** para visualização dos resultados.

O foco foi aplicar **lógica analítica e domínio em SQL** para extrair insights de negócio, transformando dados brutos em informações estratégicas.

---

## 🎯 Problema de Negócio

A empresa apresentava crescimento em vendas, mas precisava entender **onde estavam suas principais fontes de lucro e quais produtos, regiões e perfis de clientes mais contribuíam para o resultado financeiro**.

Para isso, buscou-se responder perguntas como:

### 1. Desempenho Geral

* Qual é o faturamento total, custo total e lucro líquido da empresa?
* Qual foi o crescimento de receita ao longo dos meses e anos?
* Qual a margem média de lucro (%) por período?

### 2. Produtos e Rentabilidade

* Quais categorias e subcategorias geram maior receita e margem de lucro?
* Quais produtos possuem alto volume, mas baixa margem (possíveis ajustes de preço)?
* Existe algum produto com baixo volume, mas alta margem (potencial de expansão)?

### 3. Análise Regional

* Quais países e estados concentram maior volume de vendas, receita e lucro?
* Há regiões com baixo desempenho ou margem negativa?
* Como se distribui o lucro médio por estado ao longo do tempo?

### 4. Perfil de Clientes

* Qual faixa etária é responsável pelo maior volume de compras?
* Há diferenças significativas no comportamento de compra entre homens e mulheres?
* Quais categorias de produto cada perfil (idade/gênero) mais consome?

---

## 🧠 Estrutura Analítica (SQL)

Toda a análise foi conduzida em **PostgreSQL**, explorando diferentes técnicas e recursos avançados da linguagem SQL:

* **SELECT e WHERE** → Para filtrar e projetar colunas relevantes.
* **GROUP BY e HAVING** → Para agregações e comparações entre períodos, categorias e regiões.
* **Window Functions (OVER, PARTITION BY, RANK, AVG, SUM)** → Para cálculos de crescimento, médias móveis, e ranking de vendas por país, produto e cliente.
* **CTEs (WITH)** → Para estruturar consultas complexas de forma modular e legível, separando etapas de cálculo como faturamento, custo e margem.
* **CASE WHEN** → Para criar colunas condicionais, como faixas etárias de clientes, categorização de margens e classificação de performance por região.

Essas ferramentas juntas permitiram **análises dinâmicas e segmentadas**, com cálculos estatísticos e operacionais diretamente via SQL, sem dependência de outras linguagens.

---

## 📊 Power BI Dashboard

O dashboard (em construção) será dividido em **três áreas principais**, cada uma representando uma dimensão estratégica da empresa:

1. **🎯 Geral** - Análises de todos os indicadores como, volume de vendas, receita, lucro e etc por anos e meses.
2. **📦 Produtos** — Análises de faturamento, custo, lucro e margem por categoria, subcategoria e produto.
3. **🌎 Regional** — Comparativo de desempenho entre países, estados e regiões, com ranking de lucratividade e mapa interativo.

O objetivo do dashboard será **conectar a análise técnica em SQL a uma visualização executiva e intuitiva**, possibilitando que qualquer gestor identifique oportunidades de melhoria com clareza.

_Imagens do Dashboard(Visão Geral, Produtos, Regiao)_
<p align="center">
  <img width="90%" alt="Visao_Geral" src="https://github.com/user-attachments/assets/bf49b5c1-df0e-44fd-9ba5-94531f748796" />
</p>
<p align="center">
  <img width="45%" alt="Produtos" src="https://github.com/user-attachments/assets/b250a96b-3a4a-4e41-af52-594b12a930bd" />
  <img width="45%"  alt="Regiao" src="https://github.com/user-attachments/assets/91e35026-41d4-4210-b02b-13eda1cc7507" />
</p>

Aqui está o link do Dashboard para poder mexer: [Dashboard](https://app.powerbi.com/view?r=eyJrIjoiYmEzNTFlYzUtZjU2Ny00MGE0LThhNTYtNGM4NjcyMjAyODNmIiwidCI6IjlkYmYzMjZlLTIxODUtNGM3OC1iY2NhLTBmNTdmOTc4ZjNkYSJ9)

---
## 📝 Resumo das Análises e Estratégias

A análise de **SQL e Power BI** identificou os principais fatores de desempenho da empresa:

* **Produtos de alto volume e baixa margem** (como Bikes) requerem ajustes de preço e otimização de custos;
* **Produtos de baixo volume e alta margem** (Bike Racks, Fenders, Gloves) apresentam potencial de expansão;
* **Mercados de alto desempenho** (Alemanha) devem ser priorizados, enquanto regiões deficitárias (certos estados dos EUA e França) precisam de ajustes operacionais;
* **Clientes adultos** são o principal público, com forte preferência por acessórios.

**Estratégias implementadas:**

* Ajuste de preços das Bikes para aumentar margem;
* Promoção de produtos de alta margem (Bike Racks, Fenders, Gloves);
* Reforço de vendas em mercados lucrativos (Alemanha) e revisão de operações nos EUA e França;
* Campanhas segmentadas para clientes adultos;
* Monitoramento contínuo de vendas e margens por produto e região.

**Retorno esperado:**

* Aumento da margem líquida e lucro por produto: **+5–8%**;
* Crescimento da receita em mercados estratégicos: **+10–15%**;
* Redução de perdas em regiões deficitárias: **-20–30%**;
* Maior engajamento e fidelização do público-alvo, elevando o ticket médio: **+7–12%**.

Para mais detalhes das análises vá na pasta *Insights*, lá você terá a análise detalhada e com todas as descobertas, estratégias e resultados.

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia     | Finalidade                                                                                 |
| -------------- | ------------------------------------------------------------------------------------------ |
| **PostgreSQL** | Análises e consultas SQL, criação de CTEs, funções de janela e indicadores de performance. |
| **Power BI**   | Visualização interativa dos dados e apresentação dos insights estratégicos.                |

---


## 🚀 Conclusão

Este projeto demonstra como **o domínio de SQL aliado à visualização em Power BI** permite criar uma visão completa do desempenho empresarial — desde o nível operacional até o estratégico.

O foco é mostrar **capacidade analítica, domínio técnico e visão de negócio**, transformando dados em decisões com base em fatos.

