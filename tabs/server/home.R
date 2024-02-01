##-- + Tab update after click ----
observeEvent(input$all,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "all")
})
observeEvent(input$seguridadAlimentaria,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "seguridadAlimentaria")
})
observeEvent(input$salud,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "salud")
})
observeEvent(input$transporteHumanitario,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "transporteHumanitario")
})
observeEvent(input$integracion,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "integracion")
})
observeEvent(input$nutricion,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "nutricion")
})
observeEvent(input$proteccion,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "proteccion")
})
observeEvent(input$infancia,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "infancia")
})
observeEvent(input$vbg,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "vbg")
})
observeEvent(input$trataTrafico,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "trataTrafico")
})
observeEvent(input$peas,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "peas")
})
observeEvent(input$alojamiento,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "alojamiento")
})
observeEvent(input$wash,{
   updateTabsetPanel(session = session, inputId = "navbar", selected = "wash")
 })
observeEvent(input$educacion,{
  updateTabsetPanel(session = session, inputId = "navbar", selected = "educacion")
})
