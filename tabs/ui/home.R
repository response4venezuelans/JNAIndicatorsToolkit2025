home <- tabPanel(title = "Home", 
                 value = "home",
                 column(width = 12,
                        wellPanel(
                          HTML("<h1><b>Catálogo de preguntas e indicadores para evaluaciones de necesidades de R4V</b></h1>"),

                          HTML(
                            "<h4>El primer módulo a continuación contiene la información correspondiente al <b>marco analítico</b> utilizado para el cálculo de las personas en necesidad con base en los indicadores y las preguntas establecidas como mandatorias (“core”). Los módulos siguientes contienen las fichas completas de los <b>indicadores y las preguntas estandarizadas</b> para la estimación de las personas en necesidad y el análisis de su situación en cada uno de los 9 sectores y 3 subsectores de la plataforma de coordinación interagencial R4V.</h4>"
                          )
                        )
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "Marco Analítico", color = appColors[14], icon = "peas.png", id = "framework")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "TODOS LOS INDICADORES", color = appColors[13], icon = "all.png", id = "all")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "SEGURIDAD ALIMENTARIA", color = appColors[2], icon = "seguridadAlimentaria.png", id = "seguridadAlimentaria")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "SALUD", color = appColors[3], icon = "salud.png", id = "salud")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "TRANSPORTE HUMANITARIO", color = appColors[4], icon = "transporteHumanitario.png", id = "transporteHumanitario")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "INTEGRACION", color = appColors[5], icon = "integracion.png", id = "integracion")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "NUTRICION", color = appColors[6], icon = "nutricion.png", id = "nutricion")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "PROTECCION", color = appColors[15], icon = "proteccionGeneral.png", id = "proteccion")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "PROTECCION DE LA NIÑEZ", color = appColors[12], icon = "proteccionInfancia.png", id = "infancia")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "VIOLENCIA BASADA EN GÉNERO", color = appColors[11], icon = "proteccionVBG.png", id = "vbg")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "TRATA Y TRAFICO DE PERSONAS", color = appColors[10], icon = "proteccionTT.png", id = "trataTrafico")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "GRUPOS DE TRABAJO", color = appColors[9], icon = "wg.png", id = "wg")
                 ),
                 # column(width = 3, align = "center",
                 #        tab_sector(text = "PEAS", color = appColors[9], icon = "peas.png", id = "peas")
                 # ),
                 column(width = 3, align = "center",
                        tab_sector(text = "ALOJAMIENTO", color = appColors[7], icon = "alojamiento.png", id = "alojamiento")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "WASH", color = appColors[8], icon = "wash.png", id = "wash")
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "EDUCACION", color = appColors[1], icon = "educacion.png", id = "educacion")
                 )
)
