home <- tabPanel(title = "Home", 
                 value = "home",
                 hr(),
                 br(), br(),
                 HTML("<h1><center>Bienvenido al repositorio de <b>indicadores de necesidad</b> de la plataforma R4V</center></h1>"),
                 br(), br(), br(), br(),
                 column(width = 3, align = "center",
                        tab_sector(text = "WASH", color = appColors[1], icon = "wash.png", id = "wash")
                 ),
                 column(width = 12,
                        br(), br(), br(), br(),
                        wellPanel(
                          HTML("<h1><b>Toolkit de indicadores de necesidad</b></h1>"),
                          HTML("<h4>La plataforma interagencial para la respuesta a venezuela R4V mediante una
                               <b>Evaluacion conjunta de necesidades JNA</b>.</h4>")
                        )
                 )
)