
educacion <- tabPanel(
  title = "Educacion",
  value = "educacion",
  div(
    id = "sectorTitle",
    tags$img(src = "img/educacion.png", id = "SectorLogo"),
    h3("Indicadores sector Educación")
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("EDUCACION_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("EDUCACION_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("EDUCACION_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("EDUCACION_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("EDUCACION_downloadData", "Download"),
  DTOutput("EDUCACION_table")
)

