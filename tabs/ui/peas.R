
peas <- tabPanel(
  title = "PEAS",
  value = "peas",
  div(
    id = "sectorTitle",
    tags$img(src = "img/peas.png", id = "SectorLogo"),
    h3("Indicadores PEAS", style = paste0("color: ", appColors[9], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("PEAS_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("PEAS_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("PEAS_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("PEAS_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("PEAS_downloadData", "Download"),
  DTOutput("PEAS_table")
)

