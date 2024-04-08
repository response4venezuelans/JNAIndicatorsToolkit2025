
trataTrafico <- tabPanel(
  title = "Trata y tráfico",
  value = "trataTrafico",
  div(
    id = "sectorTitle",
    tags$img(src = "img/proteccionTT.png", id = "SectorLogo"),
    h3("Indicadores sector Trata y tráfico de personas", style = paste0("color: ", appColors[16], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("TRATATRAFICO_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("TRATATRAFICO_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("TRATATRAFICO_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("TRATATRAFICO_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("TRATATRAFICO_downloadData", "Download"),
  DTOutput("TRATATRAFICO_table")
)

