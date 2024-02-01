
PEAS_data <- JNA2024Indicators %>% filter(str_detect(Sector, "PEAS"))

# Reactive filter
filtered_data <- reactive({
  filter_data <- PEAS_data
  if (!is.null(input$PEAS_tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$PEAS_tipo_filter, ]
  }
  if (!is.null(input$PEAS_core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$PEAS_core_filter, ]
  }
  if (!is.null(input$PEAS_unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$PEAS_unidad_filter, ]
  }
  if (!is.null(input$PEAS_redaccion_filter) && input$PEAS_redaccion_filter != "") {
    filter_data <- filter_data[grep(input$PEAS_redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "PEAS_tipo_filter", choices = unique(PEAS_data$`Tipo de población`))
  updateSelectInput(session, "PEAS_core_filter", choices = unique(PEAS_data$`Indicador Core PiN`))
  updateSelectInput(session, "PEAS_unidad_filter", choices = unique(PEAS_data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$PEAS_table <-
  renderDT({
    datatable(
      filtered_data(),
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

output$PEAS_downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(filtered_data(), path = file)
  }
)