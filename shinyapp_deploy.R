#to install rsconnect package: install.packages("rsconnect")
#https://shiny.posit.co/r/articles/share/shinyapps/

#set account info: rsconnect::setAccountInfo

library(rsconnect)
rsconnect::deployApp(appTitle = "California OFW Monitoring")
