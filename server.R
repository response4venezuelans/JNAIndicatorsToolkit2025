shinyServer(function(input, output, session){
  ##-- Analitical Framework ----
  source("tabs/server/framework.R", local = TRUE)
  ##-- HOME ----
  source("tabs/server/home.R", local = TRUE)
  ##-- ALL ----
  source("tabs/server/all.R", local = TRUE)
  ##-- SEGURIDAD ALIMENTARIA ----
  source("tabs/server/seguridadAlimentaria.R", local = TRUE)
  ##-- SALUD ----
  source("tabs/server/salud.R", local = TRUE)
  ##-- TRANSPORTE HUMANITARIO ----
  source("tabs/server/transporteHumanitario.R", local = TRUE)
  ##-- INTEGRACION ----
  source("tabs/server/integracion.R", local = TRUE)
  ##-- NUTRICION ----
  source("tabs/server/nutricion.R", local = TRUE)
  ##-- PROTECCION GENERAL ----
  source("tabs/server/proteccion.R", local = TRUE)
  ##-- PROTECCION INFANCIA ----
  source("tabs/server/infancia.R", local = TRUE)
  ##-- PROTECCION VBG ----
  source("tabs/server/vbg.R", local = TRUE)
  ##-- PROTECCION TRATA TRAFICO ----
  source("tabs/server/trataTrafico.R", local = TRUE)
  ##-- WG ----
  source("tabs/server/wg.R", local = TRUE)
  ##-- PEAS ----
  source("tabs/server/peas.R", local = TRUE)
  ##-- ALOJAMIENTO ----
  source("tabs/server/alojamiento.R", local = TRUE)
  ##-- EDUCATION ----
  source("tabs/server/educacion.R", local = TRUE)
  ##-- WASH ----
  source("tabs/server/wash.R", local = TRUE)
})