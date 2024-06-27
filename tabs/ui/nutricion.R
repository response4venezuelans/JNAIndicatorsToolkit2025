
nutricion <- tabPanel(
  title = "Nutrición",
  value = "nutricion",
  div(
    id = "sectorTitle",
    tags$img(src = "img/nutricion.png", id = "SectorLogo"),
    h3("Indicadores sector Nutrición", style = paste0("color: ", appColors[16], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("NUTRICION_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("NUTRICION_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("NUTRICION_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("NUTRICION_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("NUTRICION_downloadData", "Download"),
  DTOutput("NUTRICION_table")
)

