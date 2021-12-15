setwd("D:/DataScienceProject/R_Project/应用系统负载分析与磁盘容量预测")
# install.packages("fUnitRoots")
library(fUnitRoots)
Data <- read.csv("./data/discdata_processed.csv", header = TRUE)
colnames(Data) <- c("SYS_NAME", "COLLECTTIME", "CWC", "CWD")
attach(Data)
# 单位根检验
adfTest(CWD)
# 一阶差分单位根检验
adfTest(diff(CWD))