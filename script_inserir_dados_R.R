#############################
# Sobrevivendo na Ci�ncia   #
# Renata Muylaert           #
# Junho de 2019             #
#############################

# 7 maneiras de se inserir dados no R

# Em que pasta voc� est� trabalhando? Onde est�o os dados que voc� acaba de baixar?
getwd()
# Eu, por exemplo, estou trabalhando em 
# "D://Sobrevivendo_na_Ciencia//inserir_dados_R//"

# Lembre o R de onde voc� acabou de baixar as coisas
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Ou inclua o endere�o da pasta em que voc� est� trabalhando dentro das aspas
# setwd("")
# Eu, por exemplo faria setwd("D://Sobrevivendo_na_Ciencia//inserir_dados_R//")

# Vamos agora aprender as 7 maneiras de se inserir dados!
# 1. read.table

drt <- read.table("dados_exportados.txt", header = TRUE, sep="\t") 

# 2. read.delim

drd <- read.delim("dados_exportados.txt")

# 3. read.csv

drc <- read.csv("dados_exportados.csv")

# 4. file.choose

dfc <- read.table(file.choose(), sep="") # ap�s a janela "Selecionar arquivo" aparecer,
#escolha o arquivo dados_exportados.txt e clique em Abrir

# 5. read.xlsx
install.packages("xlsx")
library("xlsx")
drx <- read.xlsx("dados_exportados.xlsx", sheetName = "Sheet1")

# 6. read from clipboard
# Abra um bloco de notas 
# Cole seus dados l� (abra clicando em "dados_exportados.txt")
# Selecione os dados 
# Aperte copiar (ou ctrl c)!!!

drt_bloco <- read.table("clipboard", header = TRUE) 

# 7. Na m�o

riqueza_media <- c(4,7.4, 5.4, 4.6, 5, 3.2, 1.6, 5.4, 7.6, 8.8, 7.4, 4.8)
floresta_pct <- c(24.01, 52.4, 9.88, 9.05, 28.26, 20.29, 13.20, 41.92,  48.37, 47.33, 82.2,70.66)       # Vari�vel explicativa

# Exportando o que voc� criou "na m�o" de diferentes maneiras

# write.xlsx

write.xlsx(data.frame(riqueza_media, floresta_pct),
           "D://Sobrevivendo_na_Ciencia//inserir_dados_R//dados_exportados.xlsx",
           sheetName = "Sheet1", 
           col.names = TRUE, row.names = FALSE, append = FALSE)

# write.table

write.table(data.frame(riqueza_media, floresta_pct),
           "D://Sobrevivendo_na_Ciencia//inserir_dados_R//dados_exportados.txt",
           col.names = TRUE, row.names = FALSE, append = FALSE, sep="\t")

# write.csv

write.csv(data.frame(riqueza_media, floresta_pct),
            "D://Sobrevivendo_na_Ciencia//inserir_dados_R//dados_exportados.csv",
            row.names = FALSE)

##########################################################