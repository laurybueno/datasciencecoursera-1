# ui
# Define UI for application that plots random distribution

# Install require Libraries
library(shiny)

shinyUI(fluidPage(
        
        fluidRow(
                column(12, 
                       h4("Gross Domestic Product App"),
                       fluidRow(
                               column(6,
                                      textOutput("output_country"),
                                      plotOutput("ggplot_gdppc_vs_country", 
                                                 height = 280, width = 430)),
                                                                      
                                column(6,
                                       textOutput("output_variable"),
                                       plotOutput("ggplot_gdppc_vs_variable", 
                                                  height = 280, width = 430))
                       ),
                                       
                        fluidRow(
                                column(6, 
                                       uiOutput("choose_country"),
                                       sliderInput("year_range", 
                                                   label = "Range of Years:",
                                                   min = 1952, max = 2007, 
                                                   value = c(1960, 2000),
                                                   format = "####"),
                                br(),
                                     
                                       tableOutput("table_01"))
                                ,
                                
                                column(6, 
                                       uiOutput("choose_variable"), 
                                       
                                       h5("Help:"),
                                       helpText("- Select the Country on Select Box"),
                                       helpText("- Select Years with Slider (1952 to 2007)"),
                                       helpText("- Select Variable (Population - Life Expectancy)")
                                )
                        )
                )
        )
))
                                      