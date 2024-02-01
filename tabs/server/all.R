
ALL_data <- JNA2024Indicators #%>% filter(str_detect(Sector, "WASH"))

# Reactive filter
ALL_filtered_data <- reactive({
  filter_data <- ALL_data
  if (!is.null(input$ALL_tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$ALL_tipo_filter, ]
  }
  if (!is.null(input$ALL_core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$ALL_core_filter, ]
  }
  if (!is.null(input$ALL_unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$ALL_unidad_filter, ]
  }
  if (!is.null(input$ALL_redaccion_filter) && input$ALL_redaccion_filter != "") {
    filter_data <- filter_data[grep(input$ALL_redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "ALL_tipo_filter", choices = unique(ALL_data$`Tipo de población`))
  updateSelectInput(session, "ALL_core_filter", choices = unique(ALL_data$`Indicador Core PiN`))
  updateSelectInput(session, "ALL_unidad_filter", choices = unique(ALL_data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$ALL_table <-
  renderDT({
    datatable(
      ALL_filtered_data(),
      class = 'center-table',
      options = list(
        dom = 't', # Hide the search bar
        order = list(1, 'asc'), # Initial sorting by the first column
        pageLength = 1000, # Display up to 1000 rows per page
        searching = FALSE#,
        # columnDefs = list(
        #   list(visible = FALSE, targets = c(0,1,2))  # Hide the second column (adjust index as needed)
        # )
      ),
      rownames = FALSE, extensions = c('Responsive')
    )
  })

output$ALL_downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(ALL_filtered_data(), path = file)
  }
)