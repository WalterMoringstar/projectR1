setwd("D:/DataScienceProject/R_Project/应用系统负载分析与磁盘容量预测")
Data <- read.csv("./data/predictdata.csv", header = TRUE)
colnames(Data) <- c("num", "pre", "real")
attach(Data)
# 平均绝对误差
mae <- mean(abs(pre - real))
# 均方根误差
rmse <- mean((pre - real) ^ 2)
# 平均绝对百分误差
mape <- mean(abs(pre - real) / real)
