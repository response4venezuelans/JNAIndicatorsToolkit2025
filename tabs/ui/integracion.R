
integracion <- tabPanel(
  title = "Integración",
  value = "integracion",
  div(
    id = "sectorTitle",
    tags$img(src = "img/integracion.png", id = "SectorLogo"),
    h3("Indicadores sector Integración", style = paste0("color: ", appColors[16], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("INTEGRACION_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("INTEGRACION_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("INTEGRACION_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("INTEGRACION_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("INTEGRACION_downloadData", "Download"),
  DTOutput("INTEGRACION_table")
)

