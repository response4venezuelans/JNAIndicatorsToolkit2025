
infancia <- tabPanel(
  title = "Protección de la niñez",
  value = "infancia",
  div(
    id = "sectorTitle",
    tags$img(src = "img/proteccionInfancia.png", id = "SectorLogo"),
    h3("Indicadores sector Protección de la niñez")
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("INFANCIA_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("INFANCIA_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("INFANCIA_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("INFANCIA_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("INFANCIA_downloadData", "Download"),
  DTOutput("INFANCIA_table")
)

