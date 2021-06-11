library(shiny)
library(shinythemes)

  ui <- fluidPage(theme=shinytheme("superhero"),
    navbarPage(
      "CodeWithUs",
      tabPanel("Intro",
               titlePanel("Welcome to Code With Us!"),
               p("Code With Us is an application that teaches basic Java programming to those who are new to the world of coding. 
                       Through this application, it is intended to develop a learning environment for anyone who is starting in the study of Java 
                       programming! If you are a newbie to coding, it may seem tough at first"),
                        br(),
                        strong("But do not worry!"),
                        br(),
                        p("We've got your back! We'll take you from step 1. You'll get the hang of it in no time!"),
                        style="text-align:justify;color:black;background-color:lavender;padding:15px;border-radius:10px"
               
               ),
            tabPanel("Programming Languages",
               titlePanel("What is Programming Languages?"),
               p("Computer programming languages allow us to give instructions to a computer in a language the computer understands. 
                 Just as many human-based languages exist, there are an array of computer programming languages that programmers can use 
                 to communicate with a computer. The portion of the language that a computer can understand is called a \“binary.\” 
                 Translating programming language into binary is known as \“compiling.\” Each language, from C Language to Python, has its own distinct features, 
                 though many times there are commonalities between programming languages."),
               style="text-align:justify;color:black;background-color:lavender;padding:15px;border-radius:10px",
               tableOutput("category"),
               br(),
               p("So, what language you want to learn? It does not matter much for your first language but it is more efficient to learn programming language
                  according to what you want to create! Moreover, among hundreds of programming languages out there, there are some that are popular among programmers.
                 It is better to learn the languages that are currently in trend so you do not stuck with old technology! "),
               br(),
               p("Below are some statistics that can help you choose your language:"),
               br(),
               plotOutput("stats"),
               br(),
               p("The trend of top 10 programming languages from 2004 - 2021 (percentage by years):"),
               plotOutput("ten"),
               br(),               
               p("Choose the available programming languages below and see its trend, popularity percentage over the years!"),
               selectInput("trend",
                           "Choose Language:",
                           c("Abap" ,"Ada","C/C++","C#","Cobol", "Dart","Delphi","Go","Groovy","Haskell","Java",
                             "JavaScript","Julia","Kotlin","Lua","Matlab","Objective-C","Perl","PHP","Python", "R","Ruby",
                             "Rust", "Scala", "Swift", "TypeScript", "VBA", "Visual Basic")
               ),
               submitButton("Enter",icon("sign-in")),
               plotOutput("growth")
               
               
               ),
      tabPanel("Variables",
               titlePanel("Our first lesson!"),
               tags$h4("First things first, let's print out the basic program that all new coders are introduced to!"),
               br(),
               htmlOutput("hello"),
               br(),
               tags$style("
                  #main * {  
                      display: inline;
                     }"),
               div(id="main",p("The code above will give an output of 'Hello World!'. Firstly, we created a class called "),tags$h4("Main. "), p("Every line of code that runs in Java must be inside a class. A class should always start with an uppercase first letter.")),
               br(),
               div(id="main",p("Next, we created the main method with the line "),tags$h4("public static void main(String[] args).", style = "color:pink"),
                   p("The main() method is mandatory and you will see it in every Java program. Any code inside the main() method will be executed. 
                     You don't have to understand the keywords before and after main. We will get to that later.")),
               br(),
               tags$style("
                  #helloworld * {  
                      display: inline;
                     }"),
               div(id="helloworld",p("We print the text with the line "),tags$h4("System.out.println(\"Hello World\")", style="color:aqua"), p(". You'll notice that the line is followed by a semicolon(;). Every line of code inside a method must be ended with a ;")),
               br(),
               p("Now that you understand printing, let's move on to the variables."),
               br(),
               tags$h3("What are variables, you ask?"),
               br(),
               p("Variables are containers for storing data values. In Java, there are different types of variables, for example:"),
               tableOutput('table'),
               br(),
               p("To create a variable, you must specify the type and assign it a value:"),
               tags$h4(em("type variable = value;")),
               p("The equal sign is used to assign values to the variable."),
               tags$h3("Time for some questions!"),
               sidebarPanel(
                 tags$h3("____ num = 5;"),
                 p("What variable type is supposed to be in the blank space?"),
                 textInput("ansp1q1","your answer",""),
                 submitButton("Submit Answer", icon("share-square"))
               ),
               sidebarPanel(
                 tags$h3("Declare a char called s with the value a."),
                 textInput("ansp1q2","your answer",""),
                 submitButton("Submit Answer", icon("share-square"))
               ),
               sidebarPanel(
                 tags$h3("____ n = \"k\";"),
                 p("What variable type is supposed to be in the blank space?"),
                 textInput("ansp1q3","your answer",""),
                 submitButton("Submit Answer", icon("share-square"))
               ),
               mainPanel(
                            h5("Output"),
                            verbatimTextOutput("txtp1q1"),
                            verbatimTextOutput("txtp1q2"),
                            verbatimTextOutput("txtp1q3")
               )
          ),
          tabPanel("Operators",
                   titlePanel("Let's learn about operators"),
                   p("Operators are used to perform operations on variables and values. They are: "),
                   tableOutput('table1'),
                   p("In the table above, we covered arithmetic operators. There are different kinds of operators. Now, lets take a look at comparison operators"),
                   tableOutput('table2'),
                   p("These operators are used to compare two values. These operators will come handy in our next lesson."),
                   br(),
                   tags$h3("Time for some questions!"),
                   sidebarPanel(
                     tags$h3("int x = 10 % 5;"),
                     p("What value is contained in the variable x?"),
                     textInput("ansp2q1","your answer",""),
                     submitButton("Submit Answer", icon("share-square"))
                   ),
                   sidebarPanel(
                     tags$h3("What is the multiplication operator symbol?"),
                     textInput("ansp2q2","your answer",""),
                     submitButton("Submit Answer", icon("share-square"))
                   ),
                   sidebarPanel(
                     tags$h3("!="),
                     p("What does this operator mean?"),
                     textInput("ansp2q3","your answer",""),
                     submitButton("Submit Answer", icon("share-square"))
                   ),
                   mainPanel(
                     h5("Output"),
                     verbatimTextOutput("txtp2q1"),
                     verbatimTextOutput("txtp2q2"),
                     verbatimTextOutput("txtp2q3")
                   )
                   ),
          tabPanel("If-else",
                   titlePanel("Let's learn about conditional statements"),
                   p("Java has the following conditional statements"),
                   tags$div(
                     tags$ul(
                      tags$li(id="main", div(p("Use"),tags$h4(" if ", style="color:pink"),p("to specify a block of code to be executed, if a specified condition is true"))),
                      tags$li(id="main", div(p("Use"),tags$h4(" else ", style="color:pink"),p("to specify a block of code to be executed, if the same condition is false"))), 
                      tags$li(id="main", div(p("Use"),tags$h4(" else if ", style="color:pink"),p("to specify a new condition to test, if the first condition is false")))
                      ),
                     br(),
                     tags$h3("The if statement", style="color:blue"),
                     htmlOutput("iff"),
                     br(),
                     tags$h3("The else statement", style="color:blue"),
                     htmlOutput("elsee"),
                     br(),
                     tags$h3("The else-if statement", style="color:blue"),
                     htmlOutput("elseif"),
                     br(),
                     tags$h3("Short Hand If...Else (Ternary Operator)", style="color:blue"),
                     p("There is also a short-hand if else, which is known as the ternary operator because it consists of three operands. It can be used to replace multiple lines of code with a single line. It is often used to replace simple if else statements:"),
                     p(em("variable = (condition) ? expressionTrue :  expressionFalse;")),
                     br(),
                     br(),
                     tags$h3("Time for some questions!"),
                     sidebarPanel(
                       p("int x = 50;"),
                      p("int y = 10;"),
                      p("if (x ___ y) {"),
                      p("ㅤㅤSystem.out.print(\"Hello World\");"),
                      p("}"),
                      tags$h4("what symbol should be in the black space in order to print the text?"),
                       textInput("ansp3q1","your answer",""),
                       submitButton("Submit Answer", icon("share-square"))
                     ),
                     mainPanel(
                       h5("Output"),
                       verbatimTextOutput("txtp3q1")
                     )
                    )
                    
                    ),
          tabPanel("do-while",
                   titlePanel("Let's learn about loops"),
                   p("Loops can execute a block of code as long as a specified condition is reached. Loops are handy because they save time, reduce errors, and they make code more readable."),
                   tags$h3("The While loop", style="color:blue"),
                   br(),
                   p("while (condition) {"),
                   p("ㅤㅤ// code block to be executed"),
                   p("}"),
                   br(),
                   p("-> The while loop loops through a block of code as long as a specified condition is true"),
                   br(),
                   tags$h3("The Do/While loop", style="color:blue"),
                   br(),
                   p("do {"),
                   p("ㅤㅤ// code block to be executed"),
                   p("}"),
                   p("while (condition)"),
                   br(),
                   p("-> The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true."),
                   br(),
                   ),
          tabPanel("for loop",
                   titlePanel("Let's learn about for loops"),
                   p("When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:"),
                   tags$h3("The For loop", style="color:blue"),
                   br(),
                   p("for (statement 1; statement 2; statement 3) {"),
                   p("ㅤㅤ// code block to be executed"),
                   p("}"),
                   br(),
                   p("Statement 1 is executed (one time) before the execution of the code block."),
                   p("Statement 2 defines the condition for executing the code block."),
                   p("Statement 3 is executed (every time) after the code block has been executed.")
                   ),
          tabPanel("Quiz",
                   
                   # Input: Question 1 ----
                   radioButtons("q1", "Question 1: What is a correct syntax to output \"Hello World\" in Java?",
                                c("print(\"Hello World\");" = "a",
                                  "echo(\"Hello World\");" = "b",
                                  "Console.WriteLine(\"Hello World\");" = "c",
                                  "System.out.println(\"Hello World\");" = "d"),
                                width = '800px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q2", "Question 2: A variable that holds a decimal number",
                                c("String" = "a",
                                  "int" = "b",
                                  "integer" = "c",
                                  "double" = "d"),
                                width = '800px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q3", "Question 3: Which of the following is a valid declaration of a char?",
                                c("char ch = 'abc';" = "a",
                                  "char ch = a;" = "b",
                                  "char ch = \"a\";" = "c",
                                  "char ch = 'a';" = "d"),
                                width = '800px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q4", "Question 4: Which of the following is a correct header line for main in a Java program?",
                                c("public static void main(args)" = "a",
                                  "public static void main(args [ ])" = "b",
                                  "public static void main(String args)" = "c",
                                  "public static void main(String [ ] args)" = "d"),
                                width = '800px',
                                selected = character(0)
                   ),
                   
                   
                   radioButtons("q5", "Question 5: All statements must end with:",
                                c("full stop (.)" = "a",
                                  "semi colon (;)" = "b",
                                  "comma (,)" = "c",
                                  "exclamation mark (1)" = "d"),
                                width = '800px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q6", "Question 6: Pick the correct syntax.",
                                c("if(x == 5) {}" = "a",
                                  "if x == 5 {}" = "b",
                                  "if(x = 5) {}" = "c",
                                  "if x = 5 {}" = "d"),
                                width = '800px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q7", "Question 7: Which of the following will result in a double",
                                c("1.0 + 3" = "a",
                                  "3 / 5" = "b",
                                  "(int)3.0" = "c",
                                  "5 * 200" = "d"),
                                width ='800px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q8", "Question 8: (1)We can use if statements without else statements.    (2)We cannot put an if-else statements inside an another if-else statements.",
                                c("Only statement 1 is true." = "a",
                                  "Only statement 2 is true." = "b",
                                  "Both statements are true." = "c",
                                  "Both statements are incorrect." = "d"),
                                width = '350px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q9", "Question 9:  (1 )We use For loop to repeat a specified number of operations. (2)We use While loop To repeat a unspecified number of operations. ",
                                c("Only statement 1 is true." = "a",
                                  "Only statement 2 is true." = "b",
                                  "Both statements are true." = "c",
                                  "Both statements are incorrect." = "d"),
                                width = '400px',
                                selected = character(0)
                   ),
                   
                   radioButtons("q10", "Question 10: Which of the following for loop declaration is not valid?",
                                c("for ( int i = 99; i >= 0; i / 9 )" = "a",
                                  "for ( int i = 20; i >= 2; --i )" = "b",
                                  "for ( int i = 7; i <= 77; i += 7 )" = "c",
                                  "for ( int i = 2; i <= 20; i = 2*i )" = "d"),
                                width ='800px',
                                selected = character(0)
                   ),
                   
                   textOutput("notice"),
                   actionButton("scheme", "Click this to submit and click below to view the scheme.",icon("sign-in")),
                   submitButton("Scheme",icon("sign-in")),
                   style="text-align:justify;color:black;background-color:lavender;padding:15px;border-radius:10px",

                   br(),
                   p("Your Results: "),
                   plotOutput("resultPie"),
                   br(),
                   tableOutput("res"),
                   br(),
                   p("Answer Scheme:"),
                   br(),
                   textOutput("ansq1"),
                   br(),
                   textOutput("ansq2"),
                   br(),
                   textOutput("ansq3"),
                   br(),
                   textOutput("ansq4"),
                   br(),
                   textOutput("ansq5"),
                   br(),
                   textOutput("ansq6"),
                   br(),
                   textOutput("ansq7"),
                   br(),
                   textOutput("ansq8"),
                   br(),
                   textOutput("ansq9"),
                   br(),
                   textOutput("ansq10"),
                   br(),
                   
          )
      )
    )

  
  server <- function(input,output){
    
    library(tidyverse) # metapackage of all tidyverse packages
    #Read dataset into a data frame
    prog_lang <- read_csv("Most Popular Programming Languages from 2004 to 2021 V4.csv")
    
    #use colmeans func to find out means of the columns to look at which programming languages are the most popular
    
    (colMeans(prog_lang[,2:29]))
    
    sort(colMeans(prog_lang[,2:29]), decreasing = TRUE)[1:10]
    
    #store the subsetted list in a vector
    sorted_list <- sort(colMeans(prog_lang[,2:ncol(prog_lang)]), decreasing = TRUE)
    #create a tibble with your data and name the columns appropriately 
    df <- tibble("ProgrammingLanguage" = names(sorted_list)[1:10], "Popularity" = as.numeric(sorted_list)[1:10])
    
    output$stats <- renderPlot({
      
      #print(df)
      #plotting the data on a barplot to represent popularity of the top 10 programming languages
      plot(
        ggplot(data = df, aes(x = ProgrammingLanguage, y = Popularity)) +
          geom_bar(stat = "identity", color = "black", fill = "blue") +
          ggtitle("Average popularity of top 10 programming languages, 2004 to 2021")
      )
    })
    
    library(zoo)
    prog_lang$Date <- as.Date(as.yearmon(prog_lang$Date))
    
    output$ten <- renderPlot({
      library("reshape2")
      #melt data into long format
      df <- prog_lang[c(1:194),c(1,4,5,12,13,17,18,19,20,21,29)]
      test_data_long <- melt(df, id="Date")  
      
      #plot the line chart based on value
      plot(ggplot(data= test_data_long,
                  aes(x= Date, y= value, colour = variable)) +
             geom_line()
      )
    })
    
    output$growth <- renderPlot({
      
      x <- input$trend
      if(x == "C/C++"){
        df <- prog_lang[c(1:203),c(1,4)]
      }
      else{
        x <- paste("^",x, "$", sep = "")
        index <- grep(x, colnames(prog_lang))
        df <- prog_lang[c(1:203),c(1,index)]
      }
      
      library("reshape2")
      #melt data into long format
      test_data_long <- melt(df, id="Date")  
      
      #plot the line chart based on value
      plot(ggplot(data= test_data_long,
                  aes(x= Date, y= value , colour = variable)) +
             geom_line()
      )
      
    })
    
    output$category <- renderTable({
      Field <- c("Front-end","Back-end","Mobile Developmet","Game Development","Data Science")
      Languages <- c("Javascript, TypeScript","JavaScript, Scala, PHP, Python, Go, Ruby","swift, Java, Obj-C, JavaScript, Kotlin",
                "PHP, C++, Java","Python, R, Julia, Scala")
      uses <- data.frame(Field,Languages)
    })
    
    output$table <- renderTable(tab)
    output$table1 <- renderTable(tab1)
    output$table2 <- renderTable(tab2)
    
    output$txtp1q1 <- renderText({
      if (input$ansp1q1 == "") {
        ""
      }else if (input$ansp1q1 == "int"){
        "[1] That's correct!"
      } 
      else {
        "[1] Sorry, but that's not correct. Try again."
      }
    })
    
    output$hello <- renderUI({
      HTML(paste("public class Main {", "ㅤpublic static void main(String[] args) {","ㅤㅤSystem.out.println(\"Hello World\");","ㅤ}","}", sep="<br/>"))
    })
    
    output$iff <- renderUI({
      HTML(paste("if (condition) {", "ㅤㅤ// block of code to be executed if the condition is true","}", sep="<br/>"))
    })
    
    output$elsee <- renderUI({
      HTML(paste("if (condition) {", "ㅤㅤ// block of code to be executed if the condition is true","} else {","ㅤㅤ// block of code to be executed if the condition is false","}", sep="<br/>"))
    })
    
    output$elseif <- renderUI({
      HTML(paste("if (condition 1) {", "ㅤㅤ// block of code to be executed if the condition 1 is true","} else if (condition 2) {","ㅤㅤ// block of code to be executed if condition 1 is false and condition 2 is true","} else {","ㅤㅤ// block of code to be executed if the condition 1 is false and condition 2 is false","}", sep="<br/>"))
    })
    
    output$txtp1q2 <- renderText({
      if (input$ansp1q2 == "") {
        ""
      }else if (input$ansp1q2 == "char s = 'a';" || input$ansp1q2 == "char s ='a';"){
        "[2] That's correct!"
      } 
      else {
        "[2] Sorry, but that's not correct. Try again."
      }
    })
    
    output$txtp2q1 <- renderText({
      if (input$ansp2q1 == "") {
        ""
      }else if (input$ansp2q1 == "0"){
        "[1] That's correct!"
      } 
      else {
        "[1] Sorry, but that's not correct. Try again."
      }
    })
    
    output$txtp2q2 <- renderText({
      if (input$ansp2q2 == "") {
        ""
      }else if (input$ansp2q2 == "*"){
        "[2] That's correct!"
      } 
      else {
        "[2] Sorry, but that's not correct. Try again."
      }
    })
    
    output$txtp2q3 <- renderText({
      if (input$ansp2q3 == "") {
        ""
      }else if (input$ansp2q3 == "Not equal" || input$ansp2q3 == "not equal"){
        "[3] That's correct!"
      } 
      else {
        "[3] Sorry, but that's not correct. Try again."
      }
    })
    
    output$txtp1q3 <- renderText({
      if (input$ansp1q3 == "") {
        ""
      }else if (input$ansp1q3 == "String"){
        "[3] That's correct!"
      } 
      else {
        "[3] Sorry, but that's not correct. Try again."
      }
    })
    
    output$txtp3q1 <- renderText({
      if (input$ansp3q1 == "") {
        ""
      }else if (input$ansp3q1 == ">"){
        "[1] That's correct!"
      } 
      else {
        "[1] Sorry, but that's not correct. Try again."
      }
    })
    
    observeEvent(input$scheme,{
      output$resultPie <- renderPlot({
        scheme <- c("d","b","d","d","b","a","a","a","c","a")
        answer <- c(input$q1,input$q2,input$q3,input$q4,input$q5,
                    input$q6,input$q7,input$q8,input$q9,input$q10)
        boolAns <- answer == scheme
        trueAns <- length(boolAns[boolAns== TRUE])
        falseAns <- length(boolAns[boolAns== FALSE])
        results <- c(trueAns,falseAns)
        labels <- c("Correct answers","Wrong answers")
        pie(results, labels, main = "Quiz Results",col = c("green","red"))
        
      })
    })

    
    output$notice <- renderText({
      "Click submit and scroll down to see your results."
    })
    
    observeEvent(input$scheme, {
      output$res <- renderTable(colnames = TRUE, {
        scheme <- c("d","b","d","d","b","a","a","a","c","a")
        answer <- c(input$q1,input$q2,input$q3,input$q4,input$q5,
                    input$q6,input$q7,input$q8,input$q9,input$q10)
        
        Question <- c("Q1","Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10")
        Answer <- answer == scheme
        table <- data.frame(Question,Answer)
      })
    })

    observeEvent(input$scheme, {
      output$ansq1 <- renderText({
        input$scheme
        "Question 1: What is a correct syntax to output \"Hello World\" in Java? Answer: System.out.println(\"Hello World\");"
      })
  })
    observeEvent(input$scheme, {
      output$ansq2 <- renderText({
        "Question 2: A variable that holds a decimal number? Answer: int"
      })
    })
    observeEvent(input$scheme,{
      output$ansq3 <- renderText({
        "Question 3: Which of the following is a valid declaration of a char? Answer: char ch = 'a';"
      })
    })
    observeEvent(input$scheme,{
      output$ansq4 <- renderText({
        "Question 4: Which of the following is a correct header line for main in a Java program? Answer: public static void main(String [ ] args)"
      })
    })
    observeEvent(input$scheme,{
      output$ansq5 <- renderText({
        "Question 5: All statements must end with? Answer: semi colon (;)"
      })
    })
    observeEvent(input$scheme,{
      output$ansq6 <- renderText({
        "Question 6: Pick the correct syntax. Answer: if(x == 5) {}"
      })
    })
    observeEvent(input$scheme,{
      output$ansq7 <- renderText({
        "Question 7: Which of the following will result in a double? Answer: 1.0 + 3"
      })
    })
    observeEvent(input$scheme,{
      output$ansq8 <- renderText({
        "Question 8: (1)We can use if statements without else statements. (2)We cannot put an if-else statements inside an another if-else statements. Answer: Only statement 1 is true. "
      })
    })
    observeEvent(input$scheme,{
      output$ansq9 <- renderText({
        "Question 9:  (1 )We use For loop to repeat a specified number of operations. (2)We use While loop To repeat a unspecified number of operations. Answer:Both statements are true."
      })
    })
    observeEvent(input$scheme,{
      output$ansq10 <- renderText({
        "Question 10: Which of the following for loop declaration is not valid? Answer: for ( int i = 99; i >= 0; i / 9 ) "
      })
    })
}
  shinyApp(ui = ui, server = server)
