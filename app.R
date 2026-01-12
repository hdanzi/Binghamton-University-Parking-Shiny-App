#Sources used:
#
#https://shiny.posit.co/
#https://shiny.posit.co/r/articles/build/html-tags/
#https://shiny.posit.co/r/articles/build/tag-glossary/
#

library(shiny)
library(dplyr)
library(plotly)

parking<-read.csv("~/Desktop/BingParking/TuesThursBingParking3.csv")

ui <- fluidPage(
  
  tags$head(
    tags$style(HTML("
    body {font-family: Georgia, serif;}
    h1, h2, h3, h4, h5 {font-family: Arial, sans-serif;}"))
  ),

    titlePanel(div('Binghamton Parking Gate Scandal',style="color:#005A43;")),
    
    fluidRow(
      column(3,
             wellPanel(
               
               # User can slide to see lots with specific number of spaces
               selectInput("day", "Day",
                           c('Tuesday', 'Thursday')),
               
               # Select time of day
               selectInput('time', 'Time',
                           c('8:00-10:00', '10:00-12:00', '12:00-2:00', '2:00-4:00', '4:00-6:00', '6:00-8:00')),
               
               # User can select specific lot
               selectInput("lot", "Parking Lot",
                           c('All', 'M1', 'M2', 'M3,4'))
             )),
      
      column(9,
             plotlyOutput("plot")),
      
      column(
        12,
        tags$div(
          style = "width: 85%; margin-left: auto; margin-right: auto; margin-top: 40px; font-size: 16px; line-height: 1.6;",
          HTML("<div style='text-align: left; padding: 18px; font-size: 16px; line-height: 1.5;'>

      <h3 style='text-align:center; font-weight:600; margin-bottom:20px; color:#005A43;'>Imagine this:</h3>

      <p>You wake up at 11 am. You immediately go on your phone to scroll on TikTok. After some mandatory phone time, you decide to get up. You eat breakfast, brush your teeth and hair, wash your face, put on the outfit you planned the night before, toss your things into your bag, and get into your car.</p>

      <p>You look at the clock, which reads 1 pm.</p>

      <p>You drive through downtown Binghamton until you find yourself on Vestal Parkway. You cruise down the parkway listening to Taylor Swift’s new album without a care in the world, feeling optimistic about your day as you pass UClub. The good mood you were in fizzles out quickly as you approach the campus entrance and see the long line of cars spilling out of the turning lane.</p>

      <p>You look at the clock again—now it’s 1:15.</p>

      <p>Realizing the traffic will make you late for class, you drive past the University entrance, turn onto Bunn Hill Road, and head up to Lot M. You drive through rows of parked cars until you reach the very back of the lot, where you finally park.</p>

      <p>It’s 1:27, and you have less than three minutes to get to class. You jump out of your car and practically speed-walk across campus. Sweat drips down your back under your oversized hoodie and puffer jacket—somehow you’re sweating even though it’s 35 degrees out. When you reach class and sit down, the clock reads 1:34.</p>

      <p>A 34-minute journey to get to class doesn’t sound ideal, but if you go to Binghamton University, you know it could be much worse.</p>

      <p>And the core issue: our Data Journalism class begins at 1:30. That happens to be when lots M2, M3, M4, M5, and L are at their fullest. If you have a class beforehand, you might be fine. But if Data Journalism is your first class of the day, you may be completely out of luck.</p>"
))),

column(6,
       h4("Lot M2:"),
       tags$img(
         src = "M2.jpeg",
         width = "100%",
         style = "border: 5px solid #005A43; margin-bottom: 20px;")),
column(6,
       h4("Lot M4:"),
       tags$img(
         src = "M4.jpeg",
         width = "100%",
         style = "border: 5px solid #005A43; margin-bottom: 20px;")),


column(
        12,
        tags$div(
          style = "width: 85%; margin-left: auto; margin-right: auto; margin-top: 40px; font-size: 16px; line-height: 1.6;",
          HTML("<div style='text-align: left; padding: 18px; font-size: 16px; line-height: 1.5;'>
               
               <p>You might be thinking, “Why don’t I check the other lots?” The problem: the only lots not near maximum capacity at this time are M1 and G1. M1 is a resident lot, so commuters can’t use it. G1 is a 15-minute walk from the Classroom Wing—a painful hike in late fall Binghamton weather.</p>"
          ))),

column(6,
       h4("Lot G1:"),
       tags$img(
         src = "G.jpeg", 
         width = "100%",
         style = "border: 5px solid #005A43; margin-bottom: 20px;")),

column(6,
       h4("Lot M1:"),
       tags$img(
         src = "M1.jpeg",
         width = "100%",
         style = "border: 5px solid #005A43; margin-bottom: 20px;")),
column(
  12,
  tags$div(
    style = "width: 85%; margin-left: auto; margin-right: auto; margin-top: 40px; font-size: 16px; line-height: 1.6;",
    HTML("<div style='text-align: left; padding: 18px; font-size: 16px; line-height: 1.5;'>

      <p>The campus shuttle seems like a solution, but the SPOT app is notoriously unreliable. Checking the app is like playing a slot machine—fun, but the house always wins. The ETA might read “2 minutes,” but you’ll be waiting for 10. Many students rely on these estimates to plan their day, and the inconsistency causes chaos.</p>

      <p>The shuttles also reach maximum capacity quickly once it gets cold out. You may end up waiting for the second or even third shuttle to get a spot. Student drivers sometimes end their shifts by parking the shuttle mid-route, forcing everyone to get off and wait again. And winter conditions make inexperienced drivers responsible for transporting 30 students at a time.</p>

      <h4 style='text-align:center; font-weight:600; margin-bottom:20px; color:#005A43;'>Now for the wild part:</h4>

      <p>Binghamton University currently has seven active construction projects and one more being planned. New lecture halls and extended buildings—yes. New parking lots—absolutely not. Grace Hall, the newest residence hall with 362 beds, is being added to CIW, where lots are already mixed-use and frequently overloaded. More residents will mean even fewer spaces for commuters.</p>

      <p>The construction of the new lecture hall even blocks several commuter parking spots in Lot M5. Parking is already scarce; losing even more spots makes the situation worse. Students constantly make memes about the never-ending construction and lack of parking, but the university takes little action.</p>

      <p>At this point, every commuter knows the routine: wake up, get ready, hop in the car, and mentally prepare for the uphill battle of finding parking. Some days you're lucky. Most days, you're not.</p>
      
      <h4 style='text-align:center; font-weight:600; margin-bottom:20px; color:#005A43;'>Written by: Jillian Kelly | Data by: Paige Heggelke | Edited by: Helena Danzi </h4>


    </div>
  ")),
  )
))

server <- function(input, output) {
  filtered_data<-reactive({
    mlot <- if (input$lot == "All") c("M1", "M2", "M3,4") else input$lot
    parking %>%
      filter(
        day == input$day,
        time == input$time,
        lot %in% mlot)
  })
  
  output$plot<-renderPlotly({
    data<-filtered_data()
    p<-ggplot(data,aes(x=lot,
                       y=spots,
                       text=paste('Lot',.data[["lot"]],
                                  "<br>",.data[["time"]],"</br>",
                                  .data[["spots"]],'available spots')))+
      geom_col(fill='#005A43')+
      labs(
        title="Available Parking Spaces",
        x= if(input$lot=='All') 'All M Lots' else paste('Lot', input$lot),
        y= 'Number of Available Spaces')
    
    ggplotly(p,tooltip='text')
    
  })
}

# Run the application 
shinyApp(ui = ui, server = server)