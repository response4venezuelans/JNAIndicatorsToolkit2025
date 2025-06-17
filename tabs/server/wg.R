
WG_data <- JNA2024Indicators %>% filter(Sector == "Grupos de Trabajo")

# Reactive filter
WG_filtered_data <- reactive({
  filter_data <- WG_data
  if (!is.null(input$WG_tipo_filter)) {
    filter_data <- filter_data[filter_data$`Tipo de población` %in% input$WG_tipo_filter, ]
  }
  if (!is.null(input$WG_core_filter)) {
    filter_data <- filter_data[filter_data$`Indicador Core PiN` %in% input$WG_core_filter, ]
  }
  if (!is.null(input$WG_unidad_filter)) {
    filter_data <- filter_data[filter_data$`Unidad de medida` %in% input$WG_unidad_filter, ]
  }
  if (!is.null(input$WG_redaccion_filter) && input$WG_redaccion_filter != "") {
    filter_data <- filter_data[grep(input$WG_redaccion_filter, filter_data$`Redaccion del indicador`, ignore.case = TRUE), ]
  }
  filter_data
})

# Update filter choices
observe({
  updateSelectInput(session, "WG_tipo_filter", choices = unique(WG_data$`Tipo de población`))
  updateSelectInput(session, "WG_core_filter", choices = unique(WG_data$`Indicador Core PiN`))
  updateSelectInput(session, "WG_unidad_filter", choices = unique(WG_data$`Unidad de medida`))
})

# Render the table with sorting and filtering
output$WG_table <-
  renderDT({
    datatable(
      WG_filtered_data(),
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

output$WG_downloadData <- downloadHandler(
  filename = function() {
    paste("filtered_data_", Sys.Date(), ".xlsx", sep = "")
  },
  content = function(file) {
    writexl::write_xlsx(WG_filtered_data(), path = file)
  }
)