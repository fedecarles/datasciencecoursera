#### Question 1
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, destfile="./comm.csv",method="curl")

data = read.csv("comm.csv", header=TRUE)
strsplit(names(data),"wgtp")

#### Question 2
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl, destfile="./GDP.csv",method="curl")
gdp = read.csv("GDP.csv", header=TRUE)
gdp = gdp[5:194,]

nocommas <- as.numeric(gsub(",","",gdp$X.3))
mean(nocommas)     

#### Question 3
grep("^United",gdp$X.2)

#### Question 4
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl, destfile="./GDP.csv",method="curl")
gdp = read.csv("GDP.csv", header=TRUE)
gdp = gdp[5:194,]

fileurl2 = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileurl2, destfile="./EDU.csv",method="curl")
edu = read.csv("EDU.csv", header=TRUE)

merged = merge(gdp,edu, by.x="X", by.y="CountryCode")
merged$Speial.Note <- as.character(merged$Special.Note)
grep(x = merged$Special.Notes,pattern="Fiscal year end: June")

#### Question 5
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 

date <- format(sampleTimes, "%Y %b %A")
año <- grep(x=date,pattern="^2012")
lunes <- grep(x=date,pattern="(^2012 .* lunes$)")
