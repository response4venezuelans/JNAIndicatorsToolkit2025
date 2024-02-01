
INTEGRACION_data <- JNA2024Indicators %>% filter(str_detect(Sector, "Integración"))

# Reactive filter
INTEGRACION_filtered_data <- reactive({
  filter_data <- INTEGRACION_data
  if (!is.null(input$INTEGRACION_tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$INTEGRACION_tipo_filter, ]
  }
  if (!is.null(input$INTEGRACION_core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$INTEGRACION_core_filter, ]
  }
  if (!is.null(input$INTEGRACION_unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$INTEGRACION_unidad_filter, ]
  }
  if (!is.null(input$INTEGRACION_redaccion_filter) && input$INTEGRACION_redaccion_filter != "") {
    filter_data <- filter_data[grep(input$INTEGRACION_redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "INTEGRACION_tipo_filter", choices = unique(INTEGRACION_data$`Tipo de población`))
  updateSelectInput(session, "INTEGRACION_core_filter", choices = unique(INTEGRACION_data$`Indicador Core PiN`))
  updateSelectInput(session, "INTEGRACION_unidad_filter", choices = unique(INTEGRACION_data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$INTEGRACION_table <-
  renderDT({
    datatable(
      INTEGRACION_filtered_data(),
      class = 'center-table',
      options = list(
        dom = 't', # Hide the search bar
        #order = list(1, 'asc'), # Initial sorting by the first column
        pageLength = 1000, # Display up to 1000 rows per page
        searching = FALSE#,
        # columnDefs = list(
        #   list(visible = FALSE, targets = c(0,1,2))  # Hide the second column (adjust index as needed)
        # )
      ),
      rownames = FALSE, extensions = c('Responsive')
    )
  })

output$INTEGRACION_downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(INTEGRACION_filtered_data(), path = file)
  }
)