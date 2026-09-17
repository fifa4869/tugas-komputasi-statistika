getwd()
setwd("D:/Rcode")

#Nama: Khofifa Khoirunnisa
#NIM: 3338250054
#Tugas Komputasi Statistika_3

library(ggplot2)

#data airquality
airquality

#Histogram untuk variabel wind
airquality$Wind
airquality["Wind"]

range(airquality$Wind)
h <- hist(airquality$Wind,
     breaks = seq(0, 22, by = 2))
h$breaks
h$counts

den <- density(airquality$Wind)
den
hist(airquality$Wind,
     breaks = seq(0, 22, by = 2),
     probability = TRUE,
     ylim = c(0, 0.12),
     xlab = "Wind",
     main = "Histogram + Density curve Wind"
)
lines(dens, col = "deeppink", lwd = 3)

#Boxplots
boxplot(airquality[, 1:4],
        names = c("Ozone", "Solar.R", "Wind", "Temp"),
        main = "Boxplot Variabel Numerik Airquality",
        xlab = "Variabel",
        ylab = "Nilai")

#Stem and leaf
stem(airquality$Ozone)
stem(airquality$Solar.R)
stem(airquality$Wind)
stem(airquality$Temp)

#scatter plot
plot(airquality$Wind,
     airquality$Temp,
     pch = 16,
     main = "Scatter Plot Wind dan Temperatur",
     xlab = "Kecepatan Angin (mph)",
     ylab = "Temperatur")
rug(airquality$Wind)
rug(airquality$Temp, side = 2)
abline(lm(airquality$Temp ~ airquality$Wind), col = "deeppink", lwd = 2)
