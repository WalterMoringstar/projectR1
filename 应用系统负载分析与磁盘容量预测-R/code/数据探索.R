setwd("D:/DataScienceProject/R_Project/应用系统负载分析与磁盘容量预测")
# 导入数据
data <- read.csv("./data/discdata.csv", header = TRUE, stringsAsFactors = FALSE)

# C盘已使用空间量
Cuse <- data[which(data[, 3] == 184 & data[, 5] == "C:\\"), 6]
plot(Cuse, type ="o", col = "blue", pch = 19, main = "C盘已使用空间的时序图")

# D盘已使用空间量
Duse <- data[which(data[, 3] == 184 & data[, 5] == "D:\\"), 6]
plot(Duse, type = "o", col = "blue", pch = 19, main = "D盘已使用空间的时序图")
