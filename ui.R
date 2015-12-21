library(shiny)
library(rCharts)

shinyUI(fluidPage(
  
  tags$head(tags$script(src = "https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"),
            tags$script(src = "https://code.highcharts.com/stock/highstock.js"),
            tags$script(src = "https://code.highcharts.com/modules/exporting.js")),
  
  titlePanel("Interactive Stock Movement & Trend"),
  
  inputPanel(
    selectInput("id", "Select Stock", choices=c("Apple (AAPL)" = "AAPL", 
                                                "Google (GOOGL)" = "GOOG", 
                                                "Microsoft (MSFT)" = "MSFT",
                                                "Oracle (ORCL)" = "ORCL",
                                                "Facebook (FB)" = "FB",
                                                "Amazon (AMZN)" = "AMZN",
                                                "Alibaba (BABA)" = "BABA"))
  ),
  
  tabsetPanel(
    tabPanel("Stock Chart",
             showOutput("highstock","highcharts")
    ),
    
    tabPanel("Introduction",
             p("This is a Coursework of Coursera -Developing Data Products showcasing using Shiny.
               It loads data from Yahoo Finance using the ",
               a(href='http://cran.r-project.org/package=quantmod','quantmod')," package and uses the ", 
               a(href='http://rcharts.io','rCharts'), " package to display the Stock trends.", "By choosing the stock counter, user is able to view the trend of the stock by 1 month,3 months,6 months,1 year, year to date, or any time period by sliding the bar below the graph")
            
    )
  )
  ))