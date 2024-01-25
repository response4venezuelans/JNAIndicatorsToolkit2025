
data <- JNA2024Indicators
#%>% filter(str_detect(Sector, "Salud"))

# Reactive filter
filtered_data <- reactive({
  filter_data <- data
  if (!is.null(input$tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$tipo_filter, ]
  }
  if (!is.null(input$core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$core_filter, ]
  }
  if (!is.null(input$unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$unidad_filter, ]
  }
  if (!is.null(input$redaccion_filter) && input$redaccion_filter != "") {
    filter_data <- filter_data[grep(input$redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "tipo_filter", choices = unique(data$`Tipo de población`))
  updateSelectInput(session, "core_filter", choices = unique(data$`Indicador Core PiN`))
  updateSelectInput(session, "unidad_filter", choices = unique(data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$WASH_table <-
  renderDT({
  datatable(
    filtered_data(),
    class = 'center-table',
    options = list(
      dom = 't', # Hide the search bar
      order = list(1, 'asc'), # Initial sorting by the first column
      searching = FALSE
    ),
    rownames = FALSE, extensions = c('Responsive')
  )
})

output$downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(filtered_data(), path = file)
  }
)