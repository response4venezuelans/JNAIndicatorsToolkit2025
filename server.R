shinyServer(function(input, output, session){
  ##-- HOME ----
  source("tabs/server/home.R", local = TRUE)
  ##-- WASH ----
  source("tabs/server/wash.R", local = TRUE)
})