Auto = read.csv("data/Auto.csv")
names(Auto)
plot(Auto$cylinders, Auto$mpg)

attach(Auto)
cylinders = as.factor(cylinders)
plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders", ylab="
     MMPG")

attach(Auto)
hist(mpg, col=2, breaks=15, freq=F)

Auto$horsepower <- as.numeric(Auto$horsepower)
pairs(~mpg+displacement+horsepower, Auto)

summary(Auto)
