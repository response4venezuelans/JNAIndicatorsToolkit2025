
seguridadAlimentaria <- tabPanel(
  title = "Seguridad Alimentaria",
  value = "seguridadAlimentaria",
  div(
    id = "sectorTitle",
    tags$img(src = "img/seguridadAlimentaria.png", id = "SectorLogo"),
    h3("Indicadores sector Seguridad Alimentaria", style = paste0("color: ", appColors[2], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("SEGURIDADALIMENTARIA_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("SEGURIDADALIMENTARIA_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("SEGURIDADALIMENTARIA_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("SEGURIDADALIMENTARIA_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("SEGURIDADALIMENTARIA_downloadData", "Download"),
  DTOutput("SEGURIDADALIMENTARIA_table")
)

