
wg <- tabPanel(
  title = "Grupo de trabajo",
  value = "wg",
  div(
    id = "sectorTitle",
    tags$img(src = "img/wg.png", id = "SectorLogo"),
    h3("Indicadores Grupos de trabajo", style = paste0("color: ", appColors[16], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("WG_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("WG_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("WG_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("WG_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("WG_downloadData", "Download"),
  DTOutput("WG_table")
)

