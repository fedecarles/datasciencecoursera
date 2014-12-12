
#### Question 1
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url, destfile="./data.csv", method="curl")

data = read.csv("data.csv")

#### Question 3


data2 = read.xlsx("data2.xlsx", header=TRUE, sheetIndex=1)

colIndex = 7:15 
rowIndex = 18:23

dat = read.xlsx("data2.xlsx", header=TRUE, sheetIndex=1,colIndex=colIndex, rowIndex=rowIndex)
sum(dat$Zip*dat$Ext,na.rm=T) 

#### Question 4
library(XML)
xmlfile = "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

doc = xmlTreeParse(xmlfile, useInternal=TRUE)
rootNode=xmlRoot(doc)
xmlName(rootNode)
zips = xpathSApply(rootNode, "//zipcode",xmlValue)
count = zips==21231
summary(count)

#### Question 5
library(data.table)
url3 = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url3, destfile="./data3.csv", method="curl")

DT = fread("data3.csv", header=TRUE)

system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
system.time(rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2])
system.time(mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15))
system.time(DT[,mean(pwgtp15),by=SEX])
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
system.time(mean(DT$pwgtp15,by=DT$SEX))
