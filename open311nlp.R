require(RJSONIO)

setwd("~/GitHub/Code for SJ/Code-for-SJ")
requests <- fromJSON('open311.json')
head(requests, n=3)
length(requests)

requests[[1]]$service_name

services <- vector()
for(i in 1:length(requests)){
   if (!is.null(requests[[i]]$description)){
      temp <- requests[[i]]$service_name
      services <- append(temp, services)
      }
   }
head(services)

requests[[1]]$description
requests[[2]]$description
!is.null(requests[[1]]$description)
!is.null(requests[[2]]$description)


description <- vector()
for(i in 1:length(requests)){
   temp <- "..."
   temp <- requests[[i]]$description
   description <- append(temp, description)
}
head(description)
length(description)
#notice that 5851 have descriptions; 4149 are null. Add if-clause to services loop to check for nulls.

open311 <- data.frame(services,description)
head(open311)
summary(open311)
unique(open311$services)

