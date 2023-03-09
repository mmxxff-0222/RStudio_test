#2矩阵
#2.1 创建矩阵
x<-1:6
(a<-matrix(data = x,nrow=3,ncol=2,byrow = T))
(b<-matrix(data = x,nrow=3,ncol=2,byrow = F))
#dim()转换矩阵格式
(c<-matrix(x))
dim(c)<-c(3:2);c; #dim(c) 将c转换为3行2列的矩阵
#带行列名创建矩阵 dimnames = list(行名，列名)
d<- matrix(x,3,2,T,dimnames = list(c("r1","r2","r3"),c("c1","c2")));d
#单独加行名 [1]
dimnames(a)[[1]] <- c("a_r1","a_r2","a_r3");a;
#单独加列名 [2]  
dimnames(b)[[2]] <- c("b_c1","b_c2");b;
#删除行名
dimnames(a)[[1]] <- vector();a;
row.names(a) <- vector();a;
#删除列名
colnames(b) <-vector();b
#删除行列名
dimnames(c) <-list();c
#空矩阵--不传入data参数
d1 <-matrix(nrow=4,ncol=4);d1


#2.2矩阵转向量  as.vector()
a1=a;a1
as.vector(a1)

#2.3矩阵索引  [ ]
d
d[1,2]
d["r3","c1"]
d[1,] #向量
d[,2]
d[c(1,3),] #取矩阵的第一行和第三行

d1 <- matrix(1:9,3,3);d1
d1[c(1,3),c(2,3)]

#2.4矩阵编辑
a<-matrix(c(1,2,3,5),2,byrow = T);a#2x2的数值矩阵 
b<-matrix(c("a1","a2","a3","a4"),2);b#2x2的字符矩阵 
c<-matrix(c(T,F,F,T),2);c#2x2的bool矩阵 
d<-matrix(seq(1:9),3);d#3x3的矩阵
#用rbind()函数来把自变量按 列 的形式纵向拼接
ab<-rbind(a,b);ab;  #按列合并
typeof(ab) 
a1<-rbind(a,1);a1;
a2<-rbind(a,c(1,3));a2;
a3<-rbind(a,c(1,4,9,4,2,3));a3;

#用cbind()函数来把自变量按 行 的形式横向拼接
ac<-cbind(a,c);ac#按行合并 
typeof(ac)

b1<-cbind(b,1);b1
b2<-cbind(b,c(3,5));b2
b3<-cbind(b,c(2,3,5));b3

#用-加下标来删除矩阵中的元素
d
d1<-d[-1,];d1#删除第一行 
d2<-d[,-1];d2#删除第一列 
(d3<-d[-c(1,3),])#删除第一行和第三行


#2.5矩阵运算
A<-matrix(c(1,2,3,1),2,byrow=T);A
B<-matrix(c(0,2,3,1),2);B
#2.5.1  四则运算+-*\ 对应位置的各元素进行运算，要求维数相同
A+B

#2.5.2 平均、求和函数
colSums(A)  #colSums() 对矩阵的各列求和 
rowSums(B)  #rowSums() 对矩阵的各行求和 
colMeans(A) #colMeans() 对矩阵的各列求平均值 
rowMeans(B) #rowMeans() 对矩阵的各行求平均值

#2.5.3 其他
A;t(A) #t() 转置
det(A) #求方阵的行列式
crossprod(A,B) #求两个矩阵的内积 
outer(A,B) #求解两个矩阵的外积（叉积） 
A%*%B   #%*% 矩阵乘法，第一矩阵的列数与第二个矩阵的行数相等 

diag(A)       #diag(<矩阵>) 取矩阵对角元素,得到向量
diag(diag(A)) #diag(<向量>) 生成以 向量 为对角元素的对角矩阵
solve(A)  #solve() 求解逆矩阵 
eigen(A)  #eigen() 求解特征值和特征向量




















