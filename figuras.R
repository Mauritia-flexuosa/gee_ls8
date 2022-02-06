# Boxplots com ndvi médio e desvio padrão do ndvi por grau de urbanização.
# Marcio Baldissera Cure - 04-02-2022

library(tidyverse)
library(patchwork)

a <- dados_2 %>% ggplot(aes(y = ndvi_medio, x = Tipo, fill = factor(Tipo)))+
				geom_boxplot(show.legend=F)+
				scale_fill_manual(values=c("orange4", "darkgrey", "purple", "yellow"))+
				ggtitle("Mean NDVI")+
				ylab("Mean NDVI")
				
				
				
b <- dados_2 %>% ggplot(aes(y = ndvi_sd, x = Tipo, fill = factor(Tipo)))+
				geom_boxplot(show.legend=F)+
				scale_fill_manual(values=c("orange4", "darkgrey", "purple", "yellow"))+
				ggtitle("Standard deviation of NDVI")+
				ylab("Standard Deviation of NDVI")


png("boxplot_ndvi_por_tipo.png", res=300, width=3200, height=2400)
a|b
dev.off()
