ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary)
plot(salary,ages)
help(plot)

data()
airquality = datasets::airquality

head(airquality,10)
tail(airquality,10)
names(airquality)

airquality[,c(1,2)]
df=airquality[,-6]

df

summary(airquality[,1])
summary(airquality$Temp)
airquality$Wind

summary(airquality)

###Visualization

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="s")
plot(airquality) ## scatterplot

plot(airquality$Ozone,airquality$Month)
plot(airquality$Wind,type="p")
plot(airquality$Wind,type="l")
plot(airquality$Wind,type="b")


plot(airquality$Wind,xlab='Ozone Concentration')

plot(airquality$Wind,xlab='Ozone Concentration',ylab='No of Instance',main='Ozone level
     in New York city',col='red',type="l")
plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)


#Horizontal Bar Plot

barplot(airquality$Ozone,main='OzoneConcentration in Air',
        ylab='Ozone Level',
        col='Blue',
        horiz= T,
        axes= F
      )
help(barplot)

##Histogram

hist(airquality$Temp)

hist(airquality$Temp,main='Solar Radation value in Air',
     xlab= 'Solar Radation',col='Green',border='Black')

help(hist)

##Single Box Plot

help(boxplot)

boxplot(airquality$Wind,main='Boxplot',col='Red',border='Black',horizontal = T)

boxplot.stats(airquality$Wind)$out

airquality$Ozone

##Multiple Box Plot

boxplot(airquality[,1:4],main='Multiple Box Plot',horizontal='T',col='Pink')

boxplot.stats(airquality[,1:4])$out


par(mfrow=c(3,3),mar=c(1,2,1,2), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="l")
plot(airquality$Wind,type='l')
plot(airquality$Solar.R,type="l")
barplot(airquality$Ozone,main='OzoneConcentration in Air',
        ylab='Ozone Level',
        col='Blue',
        horiz= T,
        axes= F)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,1:4],main='Multiple Box Plot',horizontal='T',col='Pink')
  
#Consedering NA Value

airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)
