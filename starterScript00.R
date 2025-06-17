## -- Starter Script --
library(readxl)
library(dplyr)
## -- read indicator table --
path <- "C:/personal_dev/JNAShinyApp2025/dataSource"
SourceJNA2024Indicators <- read_excel(
  paste(path, "Consolidated Framework PowerQuery2025.xlsx", sep="/"),
  sheet = "All") %>%
  select(1:17)

# Save dataframe to txt
dput_output <- capture.output(dput(SourceJNA2024Indicators))
writeLines(dput_output, "datasource/JNAToolkit.txt")


#saveRDS(SourceJNA2024Indicators, "datasource/JNAToolkitDF.RDS")
