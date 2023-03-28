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
Sumatorio<-colSums(tabladatos)

#Ejercicio10
ConSumatorio<-rbind(tabladatos,Sumatorio)
View(ConSumatorio)

#Ejercicio11
404*505.6 #Sumatoriox*y
204262.4/10 #EntreNumCasos
7041.7-20426.24 #SumatorioXY-Anterior

505.6^2 #X2
255631.4/10 #EntreNumCasos
37873.66-25563.14 #SumatorioX2-Anterior

-13384.54/12310.52 #Primero/Segundo


#Ejercicio12
Corr<-cor(x_distancia,y_cuentas)
Regresion<-plot(x_distancia,y_cuentas, xlab = "Distancia",ylab = "Cuentas")
text(-0.9249824,x = 10, y = 65)

#Ejercicio13

#Ejercicio14

#Ejercicio15
set.seed(1)
entrenamiento<-rnorm(10)
set.seed(2)
validacion<-rnorm(10)

#Ejercicio16
