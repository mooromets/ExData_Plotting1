source('./loadData.r')
source('./plots.r')

png("plot1.png", width = 480, height = 480)

plot1(data)

dev.off()