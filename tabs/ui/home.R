home <- tabPanel(title = "Home", 
                 value = "home",
                 column(width = 12,
                        wellPanel(
                          HTML("<h1><b>Catálogo de preguntas e indicadores para evaluaciones de necesidades de R4V</b></h1>"),

                          HTML("<h4>Cada módulo a continuación contiene las fichas de <b>indicadores y preguntas estandarizados</b> para la estimación de las personas en necesidad en cada uno de los sectores de R4V</h4>")
                        )
                 ),
                 column(width = 3, align = "center",
                        tab_sector(text = "TODOS", color = appColors[13], icon = "all.png", id = "all")
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
                        tab_sector(text = "PEAS", color = appColors[9], icon = "peas.png", id = "peas")
                 ),
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
