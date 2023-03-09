#4数据框   ---不同列可以是不同属性  行名没有太大意义
#4.1创建数据框
#创建数据库---由 向量 创建df1
a<-seq(1:5)
b<-letters[1:5]
df1<-data.frame(a,b);df1
#创建数据框---由 矩阵 创建df2
A<-matrix (seq (1, 20), nrow=5);colnames(A)<-c("c1","c2","c3","c4");A; #matrix A
#rownames(A)<-c("r1","r2","r3","r4","r5")
B<-matrix(letters [1:10], ncol=2);colnames (B)<-c("B1","B2");B; #matrix B
#rownames (B)<-c("r1","r2", "r3", "r4", "r5")
df2<-data.frame(A,B);df2
#查看数据框行列名（[1]:row [2]:col）
dimnames.data.frame(df2)


#4.2数据框索引 
data(iris) #加载内部数据集数据框
iris1<-head(iris);iris1  #head取前6行 
#三种索引方式
iris1$Sepal.Length      #使用“＄”符号按照列名称进行索引
#使用“下标” 或 列名称
iris1["Sepal.Length"]   #列名称索引
iris1[1,] #第一行
iris1[,1] #第一列
#subset()按条件索引
subset(iris1, Sepal.Length<5)

#4.3数据框编辑
#增加行  rbind()
iris2<-tail(iris);iris2  #tail取后6行
iris3<-rbind(iris1,iris2);iris3 
iris3[1,1]<-4.2;iris3
#删除行 [-r, ]
iris1;iris5<-iris1[-1,];iris5;

#删除列 [ ,-c]
iris1;iris4<-iris1[,-5];iris4
#增加列  cbind()
iris6<-cbind(iris4,iris1$Species);iris6

#修改列名 
names(iris6)  #查看现有的列名
names(iris6)[5]<-"Specises"       #修改某一个列名
names(iris1)<-letters[1:5];iris1  #修改全部列名














