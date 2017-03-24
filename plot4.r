source('./loadData.r')
source('./plots.r')

png("plot4.png", width = 480, height = 480)

par(mfcol= c(2,2))

plot4(data)

dev.off()