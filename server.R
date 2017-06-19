
# Data:
#       side <- a
#      hight <- b
##  Calculation:
#       Base Area <- a*a
#       SlantLength <- sqrt(b*b+a/2*a/2)
#       Perimeter <- 4*a
#       Pyramid Volume <- 1/3*Base Area*Hight <- 1/3*a*a*b
#       Surface Area <- Base Area + 1 /2 *4* Perimeter * SlantLength<-a*a+1/2*4*a*SlantLength 
    
library(shiny)

shinyServer( 
    function(input,output){
    output$volume<-renderText({1/3*as.numeric((input$side))*as.numeric((input$side))*as.numeric((input$height))}) 
    a<- reactive({sqrt(as.numeric(input$side)*as.numeric(input$side)+as.numeric(input$height)*as.numeric(input$height)/4)})
   
    output$Surface<-renderText({as.numeric(input$side)*as.numeric(input$side)+ 
            2*as.numeric(input$side)*a()})      
    output$odate<-renderPrint({input$date})     
}) 
