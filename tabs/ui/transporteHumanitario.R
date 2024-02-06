
transporteHumanitario <- tabPanel(
  title = "Transporte Humanitario",
  value = "transporteHumanitario",
  div(
    id = "sectorTitle",
    tags$img(src = "img/transporteHumanitario.png", id = "SectorLogo"),
    h3("Indicadores sector Transporte Humanitario", style = paste0("color: ", appColors[4], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("TRANSPORTEHUMANITARIO_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("TRANSPORTEHUMANITARIO_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("TRANSPORTEHUMANITARIO_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("TRANSPORTEHUMANITARIO_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("TRANSPORTEHUMANITARIO_downloadData", "Download"),
  DTOutput("TRANSPORTEHUMANITARIO_table")
)

