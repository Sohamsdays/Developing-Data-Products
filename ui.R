
shinyServer( fluidPage(
  
    
      
    headerPanel ("MY first shiny app.(IF YOU ARE SEEING NO PLOT/INVALID NUMBER OF BREAKS, type any value OF SD :)"),
    sidebarLayout(
    sidebarPanel(
      selectInput("Distribution","Please Select Distribution type", choices = c("Normal", "Exponential") ),
      sliderInput("sampleSize","Please select sample size",min = 100, max = 5000,value = 1000,step = 100),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("mean","Please select mean",10),
                       textInput("sd","Please select sd"),3),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("lambda","Please select exponential",1)
      )
    )
    
    
    
    
  ,
  
  mainPanel(
    
    
    plotOutput("histPlot")
  )
  )
                  
)
)
  






