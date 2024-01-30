home <- tabPanel(title = "Home", 
                 value = "home",
                 hr(),
                 br(), br(),
                 HTML("<h1><center>Bienvenido al repositorio de <b>indicadores de necesidad</b> de la plataforma R4V</center></h1>"),
                 br(), br(), br(), br(),
                 column(width = 3, align = "center",
                        tab_sector(text = "TODOS", color = appColors[1], icon = "all.png", id = "all")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "SEGURIDAD ALIMENTARIA", color = appColors[1], icon = "seguridadAlimentaria.png", id = "seguridadAlimentaria")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "SALUD", color = appColors[1], icon = "salud.png", id = "salud")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "TRANSPORTE HUMANITARIO", color = appColors[1], icon = "transporteHumanitario.png", id = "transporteHumanitario")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "INTEGRACION", color = appColors[1], icon = "integracion.png", id = "integracion")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "NUTRICION", color = appColors[1], icon = "nutricion.png", id = "nutricion")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "PROTECCION GENERAL", color = appColors[1], icon = "proteccionGeneral.png", id = "proteccion")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "PROTECCION DE LA NIÑEZ", color = appColors[1], icon = "proteccionInfancia.png", id = "infancia")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "VIOLENCIA BASADA EN GÉNERO", color = appColors[1], icon = "proteccionVBG.png", id = "vbg")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "TRATA Y TRAFICO DE PERSONAS", color = appColors[1], icon = "proteccionTT.png", id = "trataTrafico")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "ALOJAMIENTO", color = appColors[1], icon = "alojamiento.png", id = "alojamiento")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "WASH", color = appColors[1], icon = "wash.png", id = "wash")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "EDUCACION", color = appColors[1], icon = "educacion.png", id = "educacion")
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
