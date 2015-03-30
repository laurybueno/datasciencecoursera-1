# Server
suppressPackageStartupMessages(library(shiny))          # Shiny App
suppressPackageStartupMessages(library(xlsx))           # Reading Excel Files
suppressPackageStartupMessages(library(datasets))       # Data Sets
suppressPackageStartupMessages(library(ggplot2))        # Plotting
suppressPackageStartupMessages(library(googleVis))      # Google Vis

# Loading Data
gDat <- read.delim(file = "GapMinder_GDPData.csv")

# Options for Debugging
options(shiny.error = browser)

shinyServer(function(input, output) {
        
        # Drop-down selection box generated from Gapminder dataset Country
        output$choose_country <- renderUI({
                selectInput("country", "Country", 
                            as.list(levels(gDat$country)), selected = "Germany")
        })
        
        country_data <- reactive({
                if(is.null(input$country)) {
                        return(NULL)
                }
                a <- subset(gDat, country == input$country &
                               year >= input$year_range[1] & 
                               year <= input$year_range[2])
                return(a)
                
                })
        
        output$table_01 <- renderTable({ 
                tail(country_data(), 3)
        })
        output$output_country <- renderText({
                if (is.null(input$country)){
                        return(NULL)
                }
                paste("Country selected:", input$country)
        })
        output$ggplot_gdppc_vs_country <- renderPlot({
                if(is.null(country_data())) {
                        return(NULL)
                }
                p <-  ggplot(country_data(), aes(x = year, y = gdpPercap))
                p + geom_point(size = 4, colour = "black", alpha = 1) +
                        stat_smooth(method = lm, , se = FALSE, colour = "red")
        })
        
        # Always stop execution here
        # browser() 
                
        # Drop-down selection box generated from Gapminder dataset Other Variable
        output$choose_variable <- renderUI({
                selectInput("variable", "Other Variable", 
                            c("pop", "lifeExp"), selected = "pop")
        })
        
        variable_data <- reactive({
                if(is.null(input$variable)) {
                        return(NULL)
                }
                # Calls Subset by Country & Year
                a <- subset(gDat, country == input$country &
                                    year >= input$year_range[1] & 
                                    year <= input$year_range[2])
                return(a)
                
        })

        output$output_variable <- renderText({
                if (is.null(input$variable)){
                        return(NULL)
                }
                paste("Variable selected:", input$variable)
        })
        
        output$ggplot_gdppc_vs_variable <- renderPlot({
                if(is.null(variable_data())) {
                        return(NULL)
                }
                                
                p <-  ggplot(variable_data(), aes_string(x = "year", y =input$variable))
                p + geom_point(size = 4, colour = "blue", alpha = 1) + 
                        stat_smooth(method = lm, se = FALSE, colour = "red")
                })
        
})