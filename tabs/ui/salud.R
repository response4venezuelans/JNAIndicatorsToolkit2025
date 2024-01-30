
salud <- tabPanel(
  title = "Salud",
  value = "salud",
  div(
    id = "sectorTitle",
    tags$img(src = "img/salud.png", id = "SectorLogo"),
    h3("Indicadores sector Salud")
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("SALUD_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("SALUD_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("SALUD_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("SALUD_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("SALUD_downloadData", "Download"),
  DTOutput("SALUD_table")
)

