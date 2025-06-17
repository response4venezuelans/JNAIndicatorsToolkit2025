shinyUI(
  fluidPage(
    ##-- Favicon ----
    tags$head(
      tags$link(rel = "shortcut icon", href = "img/logo.ico"),
      #-- biblio js ----
      tags$link(rel="stylesheet", type = "text/css",
                href = "img/r4vLogo.png"),
      tags$link(rel="stylesheet", type = "text/css",
                href = "https://fonts.googleapis.com/css?family=Open+Sans|Source+Sans+Pro")
    ),
    ##-- Logo ----
    list(tags$head(HTML('<link rel="icon", href="img/r4vLogo.png",
                        type="image/png" />'))),
    div(style="padding: 1px 0px; width: '100%'",
        titlePanel(
          title="", windowTitle = "Indicadores JNA"
        )
    ),
    ##-- Header ----
    navbarPage(title = div(img(src="img/r4vLogo.png",
                               height = "75px"), style = "padding-left:100px;"),
               id = "navbar",
               selected = "home",
               theme = "styles.css",
               fluid = T,
               collapsible=T,
               ##-- Tabs ----
               home,
               framework,
               all,
               seguridadAlimentaria,
               salud,
               transporteHumanitario,
               integracion,
               nutricion,
               proteccion,
               infancia,
               vbg,
               trataTrafico,
               #peas,
               wg,
               alojamiento,
               wash,
               educacion
    ),
    div(style="padding: 1px 0px; width: '100%'",
        titlePanel(
          title="", windowTitle = "Indicadores JNA"
        )),
    ##-- Footer ----
    div(class = "footer",
        includeHTML("html/footer.html")
    )
  )
)