#------向量------
#1.1创建向量
x1<-c(1,2,3)
x2<-letters[1:3]
x3<-c(T,F,F,T)
x4<-c(4,5,6)
#向量组合  c(向量1，向量2)  无法混杂多种不同类型的数据
y<-c(x1,x4)
z<-c(x1,x2) #z:字符型向量

w<-c(x1,x2,x3) 
class(w)      #w类型：字符型
is.vector(w)  #判断是否为向量

#1.1.1创建向量空间（长度为0）
x1<-vector()    #创建 逻辑型 的空向量
x2<-numeric(length = 10)   #创建 数值型 的向量,长度为10 
x3<-character() #创建 字符型 的空向量
#sapply(list, function) ：对list中数据，分别做function函数
sapply(list(x1,x2,x3), length) 
sapply(list(x1,x2,x3), class)

#1.2向量索引
#1.2.1 方括号   --->找值
x1[2]
y[1:3]          #查看前三个元素
y[c(1,3)]       #查看第一个和第三个元素
y[-3]           #查看除了第三个以外的元素
y[-c(1,3)]      #查看除了第一个和第三个以外的元素
y[c(T,T,F,F,F)] #通过逻辑取值来查看前两个元素 
#按名称索引
names(y) <-c("one","two","three","four","five","six") #给向量y起名字（表格的表头）
y["two"]
y

#1.2.2 whitch()函数 --->找位置
v<-c(1,4,6,9,0,3)
which(v==3)         #寻找等于3的元素所在位置
which(v==4 | v==9)  #寻找等于4或9的元素所在位置
which(v!=4)         #寻找不等于4的元素所在位置
which(v<7 & v<2)
#配合函数 max min
which.max(v)  #最大值所在位置
#1.2.3其他  
#subset方式  --->子集 找元素
subset(v,v>2 & v<5)#检索大于2且小于5的  元素
# match方式  --->匹配 查找是否有 某元素
v
match(v,c(1,6)) #判断向量中 元素是否等于1和6
# %in% 方式
c(1:9)%in%v   #判断向量中 是否包含某项数据


#1.3向量编辑
# 扩展  x<-c(x,y) 
x<-c(1,2,3,4,5)
y<-c(1,2,3)
x<-c(x,y)
x
# 删除 
#单个元素删除 [-位置]
(x<-x[-1])
#多个元素删除
(x<-x[-c(2:4)])


#1.4向量排序
#sort(x, decreasing = FALSE(是否降序),na.last = FALSE(缺省值是否添加末尾), ..）#
x1<-c(5,6,8,7,4,3,9)
x2<-c("A","D","G","C")
x3<-c(2,1,4,NA,5,3)
sort(x1)    #x1升序
sort(x1,T)  #x1降序
sort(x2)    #x2升序
sort(x2,decreasing = T)  #x2升序
sort(x3)
sort(x3,na.last = T)

rev(x1) #倒序 从最后一位开始输出

#1.5等差数列创建 
# seq(from=1,to=1,by=(to-from)/(length.out- 1),length.out=NULL,...)
# 首项、末、差、长度
seq(1,-9) #1  0 -1 -2 -3 -4 -5 -6 -7 -8 -9
seq(1,-9,length.out = 5)  #1.0 -1.5 -4.0 -6.5 -9.0
c<-seq(1,-9,by=-3) #1 -2 -5 -8

#1.6重复创建
#rep(x,times=1,length.out=NA,each=1)
# 对象,预重复的次数,每个元素重复的次数,序列的长度
rep(1:2,times=2,each=2,length.out=10)
rep(1:3,times=2,each=3)   #1 1 1 2 2 2 3 3 3 1 1 1 2 2 2 3 3 3
rep(1:3,times=c(2,1,2))   #1 1 2 3 3 按times参数对应重复


#1.7向量运算
(x<-1:6);(y<-rep(c(1,0,0),2))
x+1 # +-*/ 对应元素分别运行
x+y #对应元素分别运行
x%*%x #内积 （各个元素相乘 再求和）
crossprod(x,y)


#test1：计算向量模长
t<-x%*%x
t[1]
sqrt(t[1])

#test2：生成一个0.3为首项，公比为1.5，长度为20的等比数列
a<-0.3;q<-1.5;len<-20;
q_t<-seq(from=0,to=19,by=1)
a*q^q_t




