#1
date1_str <- c("1984-1-25","2024-3-7")
date1_date <-as.Date(date1_str,"%Y-%m-%d")
date1_date[2] - date1_date[1]

#2
date2_str <- c("1987-1-25","2029-3-7")
date2_date <-as.Date(date2_str,"%Y-%m-%d")
date2_date[2] - date2_date[1]

#3
date3_str <- "2012-12-12"
date3_dateBefore <-as.Date(date3_str,"%Y-%m-%d")
afterDay <- 30000/24
date3_dateAfter <- date3_dateBefore + afterDay
date3_dateAfter
weekdays(date3_dateAfter)

#4
date4_birth <- as.Date("1162-7-23")
date4_death <- as.Date("1227-8-25")
birth_weds <- weekdays(date4_birth)
birth_weds
death_weds <- weekdays(date4_death)
death_weds

#5
a<-"2021-01-31"
c<-"2023-3-3"
a-c

#6
x<-Sys.time()
y <-x+1
x
y