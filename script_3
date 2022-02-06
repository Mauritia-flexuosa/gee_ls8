# Atribui um valor médio de evi2 e ndvi para cada parcela com base nas séries temporais dessas variáveis.
# Marcio Baldissera Cure - 04-02-2022

library(tidyverse)

dados <- read.table("/home/marcio/Documentos/CAP III tese/dados/dados_walter_rede.txt")
raw_data <- read.table("/home/marcio/Documentos/CAP III tese/dados/raw_data_waalter.txt", h = T)


#Time <- dados%>%filter(site=="Paineiras")
Paineiras <- dados%>%filter(site=="Paineiras")
Saída_Janaúba_1 <- dados%>%filter(site=="Saída_Janaúba_1")#%>%select("evi2")
Saída_Janaúba_2 <- dados%>%filter(site=="Saída_Janaúba_2")#%>%select("evi2")
Ibituruna <- dados%>%filter(site=="Ibituruna")#%>%select("evi2")
Funorte <- dados%>%filter(site=="Funorte")#%>%select("evi2")
Condomínio <- dados%>%filter(site=="Condomínio")#%>%select("evi2")
Fazenda_Erica_1 <- dados%>%filter(site=="Fazenda_Erica_1")#%>%select("evi2")
Fazenda_Erica_2 <- dados%>%filter(site=="Fazenda_Erica_2")#%>%select("evi2")
Fazenda_Erica_3 <- dados%>%filter(site=="Fazenda_Erica_3")#%>%select("evi2")
Area_1 <- dados%>%filter(site=="Area_1")#%>%select("evi2")
Area_2 <- dados%>%filter(site=="Area_2")#%>%select("evi2")
Area_3 <- dados%>%filter(site=="Area_3")#%>%select("evi2")
Area_4 <- dados%>%filter(site=="Area_4")#%>%select("evi2")
Area_1_peruacu <- dados%>%filter(site=="Area_1_peruacu")#%>%select("evi2")
Area_2_peruacu <- dados%>%filter(site=="Area_2_peruacu")#%>%select("evi2")
Area_3_peruacu <- dados%>%filter(site=="Area_3_peruacu")#%>%select("evi2")


dados1 <- list(Paineiras,Saída_Janaúba_1,Saída_Janaúba_2,Ibituruna,
	Funorte,Condomínio,Fazenda_Erica_1,Fazenda_Erica_2,Fazenda_Erica_3,
	Area_1,Area_2,Area_3,Area_4,Area_1_peruacu,Area_2_peruacu,Area_3_peruacu)


ndvi_medio <- dados1%>%
		map(data.frame)%>%
		map(select,"ndvi")%>%
		map(unlist)%>%
		map(mean)%>%
		unlist

ndvi_sd <- dados1%>%
		map(data.frame)%>%
		map(select,"ndvi")%>%
		map(unlist)%>%
		map(sd)%>%
		unlist
 
dados_2 <- cbind(raw_data,ndvi_medio,ndvi_sd)

write.table(dados_2, "./Documentos/CAP III tese/dados/dados_com_NDVI_mean_sd.txt")
