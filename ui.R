shinyUI(
  pageWithSidebar(
      headerPanel("Histograms for Normal and Exponential Distribution"),
    
    sidebarPanel(
      selectInput("Distribution","Please Select Distribution Type", 
                  choices=c("Normal","Exponential")),
      sliderInput("sampleSize","Please Select Sample Size: ",
                  min=100, max= 10000, value=1000, step=100),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("mean","Please Select the mean", 10),
                       textInput("sd", "Please Select the Stardard Deviation" ,3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("lambda","Please Select Exponential Lambda:",1))
       
      ),
    
    mainPanel(
      plotOutput("myplot")
    
  )
  )
)

  
