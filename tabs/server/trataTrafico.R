
TRATATRAFICO_data <- JNA2024Indicators %>% filter(Sector == "Trata y Tráfico")

# Reactive filter
TRATATRAFICO_filtered_data <- reactive({
  filter_data <- TRATATRAFICO_data
  if (!is.null(input$TRATATRAFICO_tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$TRATATRAFICO_tipo_filter, ]
  }
  if (!is.null(input$TRATATRAFICO_core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$TRATATRAFICO_core_filter, ]
  }
  if (!is.null(input$TRATATRAFICO_unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$TRATATRAFICO_unidad_filter, ]
  }
  if (!is.null(input$TRATATRAFICO_redaccion_filter) && input$TRATATRAFICO_redaccion_filter != "") {
    filter_data <- filter_data[grep(input$TRATATRAFICO_redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "TRATATRAFICO_tipo_filter", choices = unique(TRATATRAFICO_data$`Tipo de población`))
  updateSelectInput(session, "TRATATRAFICO_core_filter", choices = unique(TRATATRAFICO_data$`Indicador Core PiN`))
  updateSelectInput(session, "TRATATRAFICO_unidad_filter", choices = unique(TRATATRAFICO_data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$TRATATRAFICO_table <-
  renderDT({
    datatable(
      TRATATRAFICO_filtered_data(),
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

output$TRATATRAFICO_downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(TRATATRAFICO_filtered_data(), path = file)
  }
)