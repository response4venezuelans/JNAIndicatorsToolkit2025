
EDUCACION_data <- JNA2024Indicators %>% filter(str_detect(Sector, "Educación"))

# Reactive filter
EDUCACION_filtered_data <- reactive({
  filter_data <- EDUCACION_data
  if (!is.null(input$EDUCACION_tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$EDUCACION_tipo_filter, ]
  }
  if (!is.null(input$EDUCACION_core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$EDUCACION_core_filter, ]
  }
  if (!is.null(input$EDUCACION_unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$EDUCACION_unidad_filter, ]
  }
  if (!is.null(input$EDUCACION_redaccion_filter) && input$EDUCACION_redaccion_filter != "") {
    filter_data <- filter_data[grep(input$redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "EDUCACION_tipo_filter", choices = unique(EDUCACION_data$`Tipo de población`))
  updateSelectInput(session, "EDUCACION_core_filter", choices = unique(EDUCACION_data$`Indicador Core PiN`))
  updateSelectInput(session, "EDUCACION_unidad_filter", choices = unique(EDUCACION_data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$EDUCACION_table <-
  renderDT({
    datatable(
      EDUCACION_filtered_data(),
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

output$EDUCACION_downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(EDUCACION_filtered_data(), path = file)
  }
)