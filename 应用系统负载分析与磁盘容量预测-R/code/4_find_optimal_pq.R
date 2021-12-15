setwd("D:/DataScienceProject/R_Project/应用系统负载分析与磁盘容量预测")
library(TSA)
library(forecast)
Data <- read.csv("./data/discdata_processed.csv", header = TRUE)
colnames(Data) <- c("SYS_NAME", "COLLECTTIME", "CWC", "CWD")
attach(Data)
# BIC图
res <- armasubsets(y = CWD, nar = 5, nma = 5, y.name = 'test',
                   ar.method = 'ols')
plot(res)
# 选择拥有最小bic值得p、q值
auto.arima(CWD, ic = "bic")
