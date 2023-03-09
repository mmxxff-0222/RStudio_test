#向量  c(1,2,3,4)
# 1只能存放一种元素，如果存在数字和字符串，就会自动转为字符串哦
# 2可以试用索引获取元素（索引从1开始）
# 3可以使用切片操作截取一个片段，两端都是闭区间

nums <- c(1:12)
nums
#排序
nums2 <- sort(nums,decreasing = TRUE) 
nums2
#append 追加
nums <- append(nums,13)

save(nums,file="nums.Rdata")
save(nums,file="nums.txt")
rm(nums)
load("nums.Rdata")
