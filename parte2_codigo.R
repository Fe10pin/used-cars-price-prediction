setwd("~/Downloads")
datos <- read.csv("UsedCars2.csv", header = TRUE, stringsAsFactors = TRUE)
View(datos)
str(datos)
attach(datos)

lmmProyec <- lm(Price~Age+KM+HP+Automatic+Gears+Weight+Color, data=datos)
summary(lmm)
contrasts(Color)


parte3 <- lm(Price~Age*KM+HP+Automatic+Gears+Weight, data=datos)
summary(parte3)
