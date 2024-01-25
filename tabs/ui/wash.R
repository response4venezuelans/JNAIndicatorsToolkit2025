wash <- tabPanel(
  title = "WASH", 
  value = "wash",
  div(
    id = "sectorTitle",
    tags$img(src = "img/wash.png", id = "SectorLogo"),
    h3("Indicadores sector WASH")
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("downloadData", "Download"),
  DTOutput("WASH_table")
  )

