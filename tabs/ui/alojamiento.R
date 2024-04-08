
alojamiento <- tabPanel(
  title = "Alojamiento",
  value = "alojamiento",
  div(
    id = "sectorTitle",
    tags$img(src = "img/alojamiento.png", id = "SectorLogo"),
    h3("Sector Alojamiento", style = paste0("color: ", appColors[16], ";"))
  ),
  br(), hr(),
  mainPanel(
    fluidRow(
      column(width = 3, selectInput("ALOJAMIENTO_tipo_filter", "Tipo de población", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("ALOJAMIENTO_core_filter", "Indicador Core", choices = NULL, multiple = TRUE)),
      column(width = 3, selectInput("ALOJAMIENTO_unidad_filter", "Unidad de medida", choices = NULL, multiple = TRUE)),
      column(width = 3, textInput("ALOJAMIENTO_redaccion_filter", label = "Redaccion del indicador", placeholder = "Palabras clave..."))
    )
  ),
  downloadButton("ALOJAMIENTO_downloadData", "Download"),
  DTOutput("ALOJAMIENTO_table")
)

