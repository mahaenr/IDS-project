# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Define UI for slider demo app ----
  ui <- fluidPage(
    table <- "responses", 
    # App title ----
    titlePanel("Test"),
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout(
      
      # Sidebar to demonstrate various slider options ----
      sidebarPanel(
        
        # Input: Question 1 ----
        radioButtons("q1", "Question 1",
                   c("answer 1" = "a",
                     "answer 2" = "b",
                     "answer 3" = "c",
                     "answer 4" = "d"),
                   ),
        
        radioButtons("q2", "Question 2",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q3", "Question 3",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q4", "Question 4",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        
        radioButtons("q5", "Question 5",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q6", "Question 6",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q7", "Question 7",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q8", "Question 8",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q9", "Question 9",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        radioButtons("q10", "Question 10",
                     c("answer 1" = "a",
                       "answer 2" = "b",
                       "answer 3" = "c",
                       "answer 4" = "d"),
                    ),
        
        submitButton("Submit Answer", icon("sign-in"))        
      ),
      
      # Main panel for displaying outputs ----
      mainPanel(
        tabsetPanel(
          tabPanel("Plot", plotOutput("resultPie"))
        )
        

      ))
  )
  
  
)

server <- function(input, output) {
  # Reactive expression to create data frame of all input values ----
    
    output$resultPie <- renderPlot({
      scheme <- c("a","a","a","a","a","a","a","a","a","a")
      answer <- c(input$q1,input$q2,input$q3,input$q4,input$q5,
                  input$q6,input$q7,input$q8,input$q9,input$q10)
      boolAns <- answer == scheme
      trueAns <- length(boolAns[boolAns== TRUE])
      falseAns <- length(boolAns[boolAns== FALSE])
      results <- c(trueAns,falseAns)
      labels <- c("Correct answers","Wrong answers")
      pie(results, labels, main = "Quiz Results",col = c("green","red"))
      
    })
    
}
shinyApp(ui = ui, server = server)