#6列表
#6.1创建列表通过list()函数来创建
# list(name1=object1,name2=object2,..)
list1<-list(a=c(1,2,3),b=c("one","two"),c=c(T,F),d=1+2i,e=99);list1
summary(list1) #查看列表的数据结构

#6.2列表索引
list1
list1[[1]]    #索引第一列---两层括号
list1[["a"]]  #按名字---两层括号
sapply(list(list1[1],list1[[1]]),class)

list1$b     #按 $名字 索引

list1[[1]][1]   #素引第一列中的第一个元素
list1$a[1]


#6.3列表编辑

#增加一列
list1<-c(list1,f=list(c(2,4,6,8)));list1
#删除一列
list2<-list1[-5];list2
list3<-list1
list3$b<-NULL;list3          
#修改其中的元素
list4<-list1
list4$a[1]=6;list4
#列表转换为问量
unlist(list1)      #转换为字符型
class(unlist(list1) )

          
          
          
          
          
          