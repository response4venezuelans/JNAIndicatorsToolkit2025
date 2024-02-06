
proteccion <- tabPanel(
  title = "Protección",
  value = "proteccion",
  div(
    id = "sectorTitle",
    tags$img(src = "img/proteccionGeneral.png", id = "SectorLogo"),
    h3("Indicadores sector Protección", style = paste0("color: ", appColors[15], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("PROTECCION_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("PROTECCION_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("PROTECCION_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("PROTECCION_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("PROTECCION_downloadData", "Download"),
  DTOutput("PROTECCION_table")
)

