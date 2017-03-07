
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(DT)

shinyUI(fluidPage(
    
    fluidRow(column(6, wellPanel(actionButton('RollInit',label = 'Roll'),
                                 textAreaInput(inputId="inits",label = '', rows= 10,
                                               value = 
"Chop 2d20k1+4 # advantage on initiative
Dom 1d20+0
Pust 1d20+1
Ajuma 1d20+2
Marcus 1d20+0
Sirius 1d20+1
Jarran 1d20+3
Baddies 1d20+2"))),
column(6,
       dataTableOutput('initTable')))
))
