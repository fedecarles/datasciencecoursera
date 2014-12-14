#### Question 1
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, destfile="./comm.csv",method="curl")

data = read.csv("comm.csv", header=TRUE)
data$agricultureLogical = ifelse(data$ACR==3 & data$AGS==6, TRUE, FALSE)
which(data$agricultureLogical)

#### Question 2
library(jpeg)
fileurl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(fileurl, destfile="./jeff.jpeg",method="curl")

jpeg <- readJPEG("jeff.jpeg", native = TRUE)
jpegquant <- quantile(jpeg, probs = seq(0, 1, 0.10))

#### Question 3
fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl, destfile="./GDP.csv",method="curl")
fileurl2 = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileurl2, destfile="./EDU.csv",method="curl")

gdp = read.csv("GDP.csv", header=TRUE)
gdp = gdp[5:194,]
edu = read.csv("EDU.csv", header=TRUE)

merged = merge(gdp,edu, by.x="X", by.y="CountryCode")
merged$Gross.domestic.product.2012 = as.numeric(levels(merged$Gross.domestic.product.2012))[merged$Gross.domestic.product.2012]
sorted = merged[order(merged$Gross.domestic.product.2012, decreasing=TRUE),]

#### Question 4
oecd = merged[merged$Income.Group=="High income: OECD",]
nonoecd = merged[merged$Income.Group=="High income: nonOECD",]
mean(oecd$Gross.domestic.product.2012)
mean(nonoecd$Gross.domestic.product.2012)

#### Question 5
merged$quantile = cut(merged$Gross.domestic.product.2012, breaks = quantile(merged$Gross.domestic.product.2012, probs = seq(0.01, 1, 0.20)))
table(merged$quantile, merged$Income.Group)
