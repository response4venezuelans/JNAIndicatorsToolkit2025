##-- + Tab update after click ----
observeEvent(input$wash,{
   updateTabsetPanel(session = session, inputId = "navbar", selected = "wash")
 })