library(shiny)
library(DT)
library(diceSyntax)
library(dplyr)
library(magrittr)

shinyServer(function(input, output, session) {
    outTable = eventReactive(input$RollInit,{
        data = read.table(text = input$inits,stringsAsFactors = FALSE)

        names(data) = c('name', 'initiative', "AC")
        
        data %<>% mutate(initiative = initiative %>% sapply(roll)) %>% arrange(desc(initiative))
        
        data
    })
    
    output$initTable = renderDataTable({
        datatable(outTable(),selection='multiple')
        })
    
})
