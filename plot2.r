source('./loadData.r')
source('./plots.r')

png("plot2.png", width = 480, height = 480)

plot2(data)

dev.off()