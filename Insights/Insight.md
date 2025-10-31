# 📊 Análise de Vendas — Global Sales Co.

Este relatório resume os **principais insights obtidos** a partir da análise de vendas da empresa **Global Sales Co.**, especializada em acessórios e roupas esportivas.  
A base de dados foi  analisada com **SQL** e **Power BI**, resultando em descobertas estratégicas sobre desempenho, produtos, regiões e perfis de clientes.

---

## 🧭 1. Desempenho Geral

### 🔹 a) Faturamento, Custos e Lucro

| Indicador         | Valor (R$)         |
| ----------------- | -----------------: |
| **Faturamento**   | 22.344.574,70      |
| **Custo Total**   | 20.082.974,00      |
| **Lucro Líquido** | 2.261.602,00       |

**Interpretação:**
- Margem de **10,12%** → de cada R$ 100 faturados, R$ 10,12 viram lucro líquido.  
- **Markup de 11,26%**, indicando que os produtos são vendidos, em média, 11% acima do custo.  
- Rentabilidade **moderada, porém saudável**, considerando setores com margens médias entre 8–12%.

---

### 🔹 b) Crescimento ao Longo do Tempo

- **Sazonalidade clara:** pico de vendas no **meio do ano** — possivelmente associado a liquidações, Dia das Mães, Dia dos Namorados ou férias escolares.  
- **Gestão de estoque:** reforçar promoções e campanhas no **início do ano** para suavizar períodos de baixa.  
- **Crescimento anual de +24,6%**, indicando melhor penetração no mercado e eficiência nas estratégias de vendas.

---

### 🔹 c) Margem Média de Lucro (%) por Período

- **Início de 2015:** margens negativas (-1,5% a -3%) → custos superavam receitas.  
- **Julho de 2015:** início da recuperação (≈ +2%), encerrando o ano em +3%.  
- **Ano de 2016:** salto expressivo — margens médias acima de **15%**, chegando a **21,8% em julho**, reflexo de melhorias operacionais e precificação mais eficiente.

---

## 🚴‍♂️ 2. Produtos e Rentabilidade

### 🔹 a) Categorias Mais Lucrativas

**Bikes**
- Principal fonte de **faturamento**, mas com **baixa margem de lucro**.  
- Possíveis causas: custos altos, precificação inadequada ou promoções agressivas.  
- **Ação sugerida:** revisar preços, renegociar fornecedores e otimizar logística.

**Acessórios e Roupas**
- Mantêm equilíbrio entre faturamento e margem.  
- Representam **categorias estáveis e rentáveis**, ideais para campanhas promocionais.

---

### 🔹 b) Produtos com Alto Volume e Baixa Margem

- **Bikes:** alto volume, baixa lucratividade → revisar precificação e custos(Principalmente nos Estados Unidos onde tiveram as maiores pertes de lucros negativos nos produtos de bikes) 
- **Acessórios e Roupas:** alguns itens possuem **alto retorno unitário** com volume moderado.  

**Recomendação:**
- Ajustar preços de **bikes** para maior rentabilidade.  

---

### 🔹 c) Produtos com Baixo Volume e Alta Margem

Os produtos que apresentam **baixo volume de vendas, mas alta margem de lucro**, como **Bike Racks, Fenders e Gloves**, representam **excelentes oportunidades de expansão**.
Apesar do volume limitado, esses itens geram **retorno financeiro proporcionalmente elevado**, o que indica um **potencial de rentabilidade ainda não explorado**.

**Recomendação estratégica:**
Aumentar a **visibilidade e o investimento em marketing direcionado** para esses produtos, com foco em canais digitais e campanhas segmentadas. Além disso, avaliar **parcerias ou promoções cruzadas** com itens de maior giro pode impulsionar as vendas sem comprometer a margem.

---

## 🌍 3. Análise Regional

### 🔹 a) Desempenho por País

| País           | Volume | Faturamento (R$) | Lucro (R$) | Margem |
| -------------- | -------:| ---------------: | ----------: | ------: |
| United States  | 36.239  | 10.377.742       | 701.165     | 7%      |
| United Kingdom | 12.822  | 4.276.220        | 328.955     | 8%      |
| Germany        | 10.386  | 4.244.510        | 958.825     | 23%     |
| France         | 10.373  | 3.446.104        | 272.657     | 8%      |

**Insights:**
- 🇺🇸 **EUA:** maior volume e faturamento — foco em otimização de custos e campanhas de escala.  
- 🇩🇪 **Alemanha:** destaque em **alta lucratividade (23%)** → mercado ideal para expansão de produtos premium.  
- 🇬🇧🇫🇷 **Reino Unido e França:** mercados estáveis e equilibrados, boas opções para crescimento sustentável.

---

### 🔹 b) Regiões com Baixo Desempenho

| País          | Estado            | Volume | Faturamento | Lucro | Margem |
| ------------- | ----------------- | ------: | -----------: | -----: | ------: |
| France        | Charente-Maritime | 149     | 37.867       | -1.322 | -0,03   |
| United States | Florida           | 14      | 3.561        | -73    | -0,02   |
| United States | Wyoming           | 5       | 2.314        | -187   | -0,08   |
| United States | Arizona           | 5       | 2.020        | -116   | -0,06   |
| United States | Massachusetts     | 2       | 1.975        | -74    | -0,04   |

**Interpretação:**
- Margens negativas indicam **operações deficitárias**, ainda que de pequeno volume.  
- Estratégia: revisar custos logísticos, precificação e políticas comerciais nessas regiões.

---

### 🔹 c) Lucro Médio por Estado

| País          | Estado              | Lucro Médio (R$) |
| ------------- | ------------------- | ----------------: |
| Germany       | Brandenburg         | 210.308 |
| Germany       | Bayern              | 186.150 |
| Germany       | Nordrhein-Westfalen | 185.648 |
| Germany       | Hessen              | 185.558 |
| Germany       | Saarland            | 183.772 |
| Germany       | Hamburg             | 177.742 |
| United States | Mississippi         | 121.500 |
| United States | Alabama             | 106.000 |
| United States | Missouri            | 102.000 |
| United States | Minnesota           | 100.667 |
| ...           | ...                 | ...     |
| France        | Charente-Maritime   | -18.886 |
| United States | Florida             | -10.429 |
| United States | Arizona             | -58.000 |
| United States | Wyoming             | -62.333 |
| United States | Massachusetts       | -74.000 |

**Conclusões:**
- 🇩🇪 **Alemanha:** todos os estados apresentam lucros altos — **mercado de altíssimo potencial**.  
- 🇺🇸 **EUA:** grande variação entre estados; revisar operações deficitárias.  
- 🇫🇷 **França:** pequenos mercados com lucro negativo — reavaliar presença.

**Insight Estratégico:**
> - **Alemanha:** foco em expansão e produtos premium.  
> - **EUA:** concentrar esforços em estados rentáveis.  
> - **França:** otimizar custos e reavaliar mercados deficitários.

---

## 👥 4. Perfil de Clientes

### 🔹 a) Faixa Etária com Maior Volume de Compras
- **Adultos** são o principal público consumidor.  
- Oportunidade para campanhas segmentadas e programas de fidelização direcionados a esse grupo.

---

### 🔹 b) Diferenças entre Gêneros
- Não há diferença significativa entre homens e mulheres no volume de compras.  
- Estratégia neutra de marketing pode ser mantida.

---

### 🔹 c) Categorias Preferidas por Idade/Gênero
- **Acessórios** dominam as vendas em todas as faixas etárias e gêneros.  
- Essa categoria é o **núcleo do portfólio**, representando forte engajamento e preferência dos clientes.

---

## 🧠 Conclusão Estratégica

A análise revelou uma empresa com **crescimento sólido, rentabilidade crescente e mercados bem definidos**.  
As principais oportunidades incluem:
- **Melhorar rentabilidade das Bikes** através de ajustes de preço e custo;  
- **Expandir atuação na Alemanha** com produtos premium;  
- **Otimizar presença nos EUA**, priorizando estados lucrativos;  
- **Fortalecer marketing voltado ao público adulto**;  
- **Aproveitar a força dos acessórios** como categoria âncora para campanhas.

---
## 📈 **Retorno Esperado com as Ações Implementadas**

Com a aplicação dessas estratégias, espera-se:

* **Aumento da margem líquida geral** para níveis entre **12% e 14%**, impulsionado pela reestruturação de preços das Bikes e redução de custos logísticos;
* **Crescimento sustentável de receita em até 20%** no médio prazo, com destaque para o mercado **alemão**, que tende a absorver produtos premium com maior rentabilidade;
* **Redução de perdas operacionais nos EUA** e fortalecimento da presença nos estados mais lucrativos;
* **Maior fidelização do público adulto**, elevando o ticket médio por cliente e a taxa de recompra;
* **Equilíbrio no portfólio de produtos**, maximizando o retorno sobre itens de alto valor agregado e reduzindo a dependência de categorias de baixa margem.

Em síntese, as mudanças propostas têm como objetivo **aumentar a eficiência operacional, melhorar margens e consolidar o crescimento global da empresa de forma sustentável**.
