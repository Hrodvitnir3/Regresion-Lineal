install.packages("MASS")
install.packages("caret")
install.packages("stats")
install.packages("olsrr")
install.packages("kable")
install.packages("kableExtra")
install.packages("knitr")
install.packages("rmarkdown")

#Ejercicio 2
y_cuentas <- c("110","2","6","98","40","94","31","5","8","10")
x_distancia <- c("1.1","100.2","90.3","5.4","57.5","6.6","34.7","65.8","57.9","86.1")

#Ejercicio3 
x_distancia<-as.numeric(x_distancia)
plot(x_distancia)
cor.test(x_distancia,y_cuentas)
cor(x_distancia,y_cuentas)

#Ejercico4
hist(x_distancia)
cvm.test(x_distancia)

#Ejercicio5
y_cuentas<-as.numeric(y_cuentas)
xy<-x_distancia*y_cuentas
xy

#Ejercicio6
x_cuadrado<-x_distancia^2
x_cuadrado

#Ejercicio7
tabladatos<-data.frame(y_cuentas,x_distancia,xy,x_cuadrado)
View(tabladatos)

#Ejercicio8
kable_styling(kable(tabladatos))

#Ejercicio9
rowSums(tabladatos)

#Ejercicio10
