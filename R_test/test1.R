y<-1
x<-2
x+y

str <- "hello world"
print(str)

getwd()

#显示变量
ls()
#删除指定
rm(dateList)
#删除所有
rm(list=ls())

#返回系统当前日期 
sysDate <- Sys.Date()
 
#字符串型 转换成 日期型 . as.Date()
dates<-c("01/27/2016","02/27/2016","01/14/2016","02/28/2016")
date <- as.Date(dates,"%m/%d/%y")

##字符串型 转换成 指定格式 as.POSIXlt(x,tz=”时区”, format)
x<-c("2016-02-28 10:07:52","2017-02-28 11:22:22")
as.POSIXlt(x,tz="","%Y-%m-%d %H:%M:%S")

tmp_format <- format(dateList,"%m/%d--%y")

as.Date("2019年9月28日", format = "%Y年%m月%d日")


a <- 123
b <- 456
a + b

#画图--demo “中国心"
install.packages("fun")
install.packages("rgl")
library(fun)
library(rgl)
demo("ChinaHeart2D")
demo("ChinaHeart3D")

#字符串 转 数值
str <-"12.456"
str_int <- as.integer(str)
str_double <-as.double(str)
#数值 转 字符串
valueToStr = paste(str_double)  


a = 1
while(a<5){
  print('hello')
  a = a+1
}
?mean
num_list <- c(10,9,11,NA,10)
mean(num_list,0,TRUE)
num_list2 <- c(2,6,20,13,8,10,120,30,130,140,250)
mean(num_list2,1)

install.packages("installr")
library(installr)



