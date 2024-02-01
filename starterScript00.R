## -- Starter Script --
library(readxl)
library(dplyr)
## -- read indicator table --
path <- "C:/Users/CABRERJO/International Organization for Migration - IOM/Regional Cordination Platform - General/IM/JNAs & Sector Guides/PiN Indicators 2024/Compilado de fichas (post-taller Dec 23)/Respuesta final de sectores"
SourceJNA2024Indicators <- read_excel(
  paste(path, "0_Compilado_fichas_JNA.xlsx", sep="/"),
  sheet = "DB_MERGED_Final") %>%
  select(1:15)

# Save dataframe to txt
dput_output <- capture.output(dput(SourceJNA2024Indicators))
writeLines(dput_output, "datasource/JNAToolkit.txt")


#saveRDS(SourceJNA2024Indicators, "datasource/JNAToolkitDF.RDS")
# 
# # Read dataframe from RDS
# #read_dataframe_rds <- readRDS("datasource/JNAToolkitDF.RDS")
# SourceJNA2024Indicators <- source("datasource/JNAToolkit.txt")