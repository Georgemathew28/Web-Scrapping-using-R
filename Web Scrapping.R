URL = "https://www.worldometers.info/world-population/population-by-country/"

#library installation
#install libraries named 'robotstxt' & 'rvest'

#import library 1
library(robotstxt)

#Allowability
path = paths_allowed(URL)

#import library 2
library(rvest)

#Reading HTML
my_html <- read_html(URL)

#Reading HTML Nodes
my_table <- html_nodes(my_html,"table")

#Reading Table
population <- html_table(my_table)[[1]]

#view table
view(population)
View(population)

#saving data to working directory(WD)
write.csv(population,"World_population.csv")
