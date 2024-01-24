## -- libraries --
library(dplyr)
library(stringr)
library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinycssloaders)
library(DT)
library(readxl)
library(writexl)



## -- common functions and global variables --
source("functions/utils.R")
appColors <- c("#00AAAD", "#007681", "#004F66", "#132A3E")

# path <- "C:/Users/CABRERJO/International Organization for Migration - IOM/Regional Cordination Platform - General/IM/JNAs & Sector Guides/PiN Indicators 2024/Compilado de fichas (post-taller Dec 23)/Respuesta final de sectores"
# SourceJNA2024Indicators <- read_excel(
#   paste(path, "Compilado de fichas sectores_FINAL.xlsx", sep="/"), 
#   sheet = "DB_MERGED") %>% 
#   select(1:15)
# 
# # Save dataframe to RDS
# saveRDS(SourceJNA2024Indicators, "datasource/JNAToolkitDF.RDS")

# Read dataframe from RDS
read_dataframe_rds <- readRDS("datasource/JNAToolkitDF.RDS")

JNA2024Indicators <- SourceJNA2024Indicators

##-- Calling componets for shiny header  ----
tab_files <- list.files(path = "tabs", full.names = T, recursive = T)
tab_files <- tab_files[-grep(x = tab_files, pattern = "server")]

suppressMessages(lapply(tab_files, source))