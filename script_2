# Extrair dados baixados do banco de dados econstruir a tabela com evi2 e ndvi
# Marcio Baldissera Cure - 04-02-2022

#library(tidyverse)
library(tidyr)
library(dplyr)
library(DBI)

# Open database connection (requires dbplyr and RSQLite packages, DBI installed via dbplyr)
con <- dbConnect(RSQLite::SQLite(), dbname = "/tmp/gee_db.sqlite")
dbListTables(con)
df <- tbl(con, 'col_1') %>% collect()



dados <- df %>% filter(site == "Paineiras" | site == "Saída_Janaúba_1" | site == "Saída_Janaúba_2" | site == "Ibituruna" | site == "Funorte" 
		 | site == "Condomínio" | site == "Fazenda_Erica_1" | site == "Fazenda_Erica_2" | site == "Fazenda_Erica_3"
		  | site == "Area_1" | site == "Area_2" | site == "Area_3" | site == "Area_4" | site == "Area_1_peruacu"
		   | site == "Area_2_peruacu" | site == "Area_3_peruacu") 


dados <- dados %>% mutate(ndvi = (nir - red) / (nir + red)) 

dados <- dados %>% mutate(evi2 = 2.5*(nir - red) / (nir + 2.4*red + 1)) 

write.table(dados, "./Documentos/CAP III tese/dados/dados_walter_rede.txt")

dados_1 <- dados %>% select("time"|"ndvi"| "evi2" | "site")
write.table(dados_1, "./Documentos/CAP III tese/dados/dados_walter_rede.txt")
