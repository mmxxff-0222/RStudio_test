#7:
#运行脚本文件  source
source("example.R")
#输出到指定文件 sink
x <- c(1:12)
y <- c(1:3)
z <- c(4:6)
sink("sink_record.txt")
print("老王12个月的收入是：")
x
print("老王前3个月的收入是：")
y
print("小张前3个月的收入是：")
z
sink()
#在文件后追加
sink("sink_record.txt",append = TRUE)
print("append a row")
sink()

#1:help
#eg:了解mean函数的使用 两种方法
?mean
help(mean)

#3：rm
#显示工作区的内存对象
ls()
#删除x
rm(x)
ls()
#删除所有
rm(list = ls())
ls()

#4:安装指定包
#下载包
install.packages("randomForest")
#载入包
library(randomForest)

#5：工作路径
#获取工作路径
getwd()
#设置工作路径
setwd("/Users/mxfmeng/Downloads/codes/R_projrcts/RStudio_test/R_test/孟祥芾20074210")
setwd("/Users/mxfmeng/Downloads/codes/R_projrcts/数据分析与系统软件/孟祥芾20074210")

#6:save load 保存工作区指定对象到文件
save(x,file = "x.Rdata")
rm(x)
x
load("x.Rdata")


#数据类型
tmp<- c(1,2,3,NA)
is.na(tmp) #判断是否存在缺省
x1 <- c(1,2,3)
is.numeric(x1) #判断对象x1是否数值型数据
x2 <- as.character(x1) #x1转换字符
is.character(x1)
is.character(x2)

#日期变量
date <-Sys.Date()
time <-Sys.time()
str_date <-date()
 #1 as.date()
#字符串型 日期列表
dateList_str <- c("2002-02-22","2002-12-18","2021-12-14","2023-03-02")
#转换为日期型
dateList_dates <-as.Date(dateList_str,"%Y-%m-%d")
dateList_dates[1]
#对时间型的对象 加减运算x->往前后数x天
today <-Sys.Date()
today
today+3000
today-3000
format(today+3000,"%A")


