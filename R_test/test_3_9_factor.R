#5 因子
#5.1 创建因子
# 5.1.1创建因子 factor(x=character(),levels,labels=levels, exclude=NA,ordered =FALSE,max=NA)
# x：需要创建为因子的数据，是一个向量
# levels：表示所创建的因子数据的水平，如果不指定的话，就是×中不重复的所有值
# labels：用来标识这一水平的名称，与水平一一对应，方便用卢识别
# exclude：表示有哪些水平是不需要的
# ordered：逻辑值，为TRUE时表示有序因子，为FALSE时表示无序因子
# nmax：表示水平个数的上限

#将statistics分解为因子型向量，水平为26个小写宇母
ff<-factor(substring("statistics",1:10,1:10),levels=letters);ff
#去除没有包含在向量中的水平
f<-factor(ff);f
ff1<-ff[,drop = T];ff1
#创建因子型向量，水平名为letter
a<-letters[1:5];a
factor(a,labels="Letter")
#创建有序的因子向量
z<-factor(LETTERS[3:1],ordered=T);z       

#example 学生成绩
grades<-c("A","B","C","D","A","B","C","D")
level<-c("A","B","C","D")
label<-c("优秀","良好","及格","不合格")
exam<-factor(x = grades,levels = level,labels = label);exam
levels(exam)
labels(exam)

#5.1.2创建因子序列  gl(n,k,length=n*k,labels=seq_len(n),ordered=FALSE)
# n：水平个数
# k：每个水平的重复数
# length：生成的序列的长度
# labels：一个n维向量，表示因子水平
# ordered：一个逻辑值，为TRUE时表示有序因子，为FALSE时表示无序因子

#生成水平数为3，每个水平重复3次的因子序列
gl(n=3,k=3)
#生成水平为"TRUE”和“FALSE”，每个水平重复3次的序列
gl(n=2,k=3,labels = c("TRUE","FALSE"))

#生成水平数为2，长度为10的序列
gl(n=2,k=1,length = 10)

#生成水平数为2，每个水平重复2次，长度为10的序列
gl(n=2,k=2,length = 10)

#生成水平数为3，每个水平重复3次的有序因子序列
gl(n=3,k=3,length = 10,ordered = T)


#5.2 因子的存储形式
#因子存储方式
status<-c("poor","Improved","poor","Exce1lent")
class(status)
status.factor<-factor(status,ordered = T);status.factor
class(status.factor)
#查看存储模式
storage.mode(status.factor)
as.numeric(status.factor)#转化为数值型向量
levels(status.factor)#查看因子的水平




