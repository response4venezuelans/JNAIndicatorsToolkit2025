
all <- tabPanel(
  title = "ALL",
  value = "all",
  div(
    id = "sectorTitle",
    tags$img(src = "img/all.png", id = "SectorLogo"),
    h3("Indicadores todos los sectores")
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("ALL_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("ALL_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("ALL_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("ALL_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("ALL_downloadData", "Download"),
  DTOutput("ALL_table")
)

