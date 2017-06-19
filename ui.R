## This application allow the user to enter the side and height of square-based pyramid and we will calculate the volume and surface of a square-based pyramid.
##Two text box are created to enter the side of square-base, and the hight of pyramid and calculations for Volume and Surface Area 
# are done in the server.R 
## To calculate the Volume and surface of a pyramid, we need the next:
## Data:
#       side <- a
#       hight <- b
##  Calculation:
#       Base Area <- a*a
#       SlantLength <- sqrt(b*b+a/2*a/2)
#       Perimeter <- 4*a
#       Pyramid Volume <- 1/3*Base Area*Hight <- 1/3*a*a*b
#       Surface Area <- Base Area + 1 /2 * Perimeter * SlantLength<-a*a+1/2*4*a*SlantLength 
 
library(shiny)

options(encoding="UTF-8")

shinyUI(fluidPage( 
  headerPanel("To calculate the Volume and Surface area of Square-Based Pyramid "), 
  sidebarPanel( 
    textInput(inputId='side','Enter side', value='0'), 
    textInput(inputId='height','Enter height', value='0'), 
    dateInput("date","Date:") 
    ), 
 
  mainPanel(h2('Calculating Volume and Surface Area'), 
        
        h4('=========================================='),
       
        h4('Volume is 1/3*Base Area*Hight'),
        
        verbatimTextOutput("volume"), 
        
        h4('Surface is Base Area + 1 /2 * Perimeter * SlantLength'), 
       
        verbatimTextOutput("Surface"),
        
       h4('Today Date is'), 
      
       verbatimTextOutput("odate") 
        
#  plotOutput('newHist') 
#              
  ))) 
