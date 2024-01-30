
vbg <- tabPanel(
  title = "Violencia basada en género",
  value = "vbg",
  div(
    id = "sectorTitle",
    tags$img(src = "img/proteccionVBG.png", id = "SectorLogo"),
    h3("Indicadores sector Protección de la niñez")
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("VBG_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("VBG_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("VBG_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("VBG_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("VBG_downloadData", "Download"),
  DTOutput("VBG_table")
)

