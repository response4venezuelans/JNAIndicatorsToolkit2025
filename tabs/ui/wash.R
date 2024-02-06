
wash <- tabPanel(
  title = "WASH",
  value = "wash",
  div(
    id = "sectorTitle",
    tags$img(src = "img/wash.png", id = "SectorLogo"),
    h3("Indicadores sector WASH", style = paste0("color: ", appColors[8], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("WASH_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("WASH_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("WASH_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("WASH_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("WASH_downloadData", "Download"),
  DTOutput("WASH_table")
  )

