source('./loadData.r')
source('./plots.r')

png("plot3.png", width = 480, height = 480)

plot3(data)

dev.off()