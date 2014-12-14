### Question 2
library(sqldf)

acs <- read.csv("s06pid.csv", header=TRUE)

x = sqldf("select pwgtp1 from acs where AGEP < 50")
y = sqldf("select distinct AGEP from acs")


### Question 3
url <- url("http://biostat.jhsph.edu/~jleek/contact.html")
page <- readLines(url)

nchar(page[10])
nchar(page[20])
nchar(page[30])
nchar(page[100])


### Question 4
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
download.file(url, destfile="./wksst.for", method="curl")

wksst <- read.fwf("wksst.for", skip=4, widths=c(12, 7,4, 9,4, 9,4, 9,4))
sum(wksst$V4)
