library(dplyr)
library(readxl)
library(ggplot2)

vendas_df <- read_excel("C:\\Users\\joaoa\\Documents\\Aulas - Estatística\\dataset - vendas\\vendas.xlsx")
View(vendas_df)
head(vendas_df)
str(vendas_df)

faturamento_loja <- group_by(vendas_df, ID_Loja)
faturamento_loja <- summarise(faturamento_loja, Faturamento_Total = sum(Valor_Final))

faturamento_loja2 <- vendas_df %>%
  group_by(ID_Loja) %>%
  summarise(Faturamento_Total = sum(Valor_Final))

faturamento_produto <- vendas_df %>%
  group_by(ID_Loja, Produto) %>%
  summarise(Faturamento_Total = sum(valor_Final))

ggplot(data = faturamento_loja, mapping = aes(x=ID_Loja, y=Faturamento_Total)) +
  geom_col() +
  theme_linedraw() +
  labs (
    title = "Faturamento loja",
    subtitle = "Iguatemi Campinas é responsável pelo maior faturamento",
    x = NULL,
    y = "Faturamento"
  )

ggplot(faturamento_produto, mapping = aes(x=Produto, y=Faturamento_Total)) +
  geom_col(position = "dodge") +
  theme_linedraw() +
  labs (
    title = "Faturamento loja",
    subtitle = "Bermudas são responsáveis pelo maior faturamento",
    x = NULL,
    y = "Faturamento",
    fill = NULL
  )

