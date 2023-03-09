#3数组
#3.1创建数组
x<-seq(1:30)
dim1<-c("A1","A2","A3")
dim2<-c("B1","B2","B3","B4","B5")
dim3<-c("C1","C2")
a<-array(x,dim = c(3,5,2),dimnames = list(dim1,dim2,dim3));a

#3.2数组索引
dim(a)  #获取维度
#获取元素
a[2,3,1]  #根据位置索引
a["A1","B1","C1"] #根据维度名称索引
#获取向量
t<-a[,1,1];t
#获取矩阵
t<-a[,,1];t
#########
A<-matrix(c(1,2,3,1),2,byrow = T);A
B<-matrix(c(0,2,3,1),2);B
dim1<-character(length = 2)
dim2<-character(length = 2)
dim1<-c("r1","r2")
dim2<-c("c1","c2")
#将A、B放到一个数组中，并用三个维度的名字标记A、B矩阵
w<-array(c(A,B),dim = c(2,2,2),dimnames = list(dim1,dim2,c("matrix1","matrix2")));w

         