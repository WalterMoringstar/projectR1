setwd("D:/DataScienceProject/R_Project/应用系统负载分析与磁盘容量预测")
Data <- read.csv("./data/discdata_processed.csv", header = TRUE)
colnames(Data) <- c("SYS_NAME", "COLLECTTIME", "CWC", "CWD")
attach(Data)
# 白噪声检验
Box.test(CWD, type = "Ljung-Box")