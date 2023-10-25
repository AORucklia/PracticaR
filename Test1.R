#[]
#^
#||
#{}

#Carga la informacion del archivo
datos<-read.csv("Emisiones.csv", header= TRUE)

# Objeto que contiene la informacion

datos<- datos[complete.cases(datos), ] 

#Metrica 1
datos$Metrica<- datos$Emisiones / datos$Poblacion

# Medidas de tendencia Central
media<- mean(datos$Emisiones)
mediana<- median(datos$Emisiones)
desviacion<- sd(datos$Emisiones)

#Histograma
hist(datos$Emisiones, main="Histograma de emisiones / paises", xlab = "Emisiones")

#Grafico de dispersion
plot(datos$Poblacion, datos$Metrica, main="Emisiones Pais - Poblacion", xlab= "Poblacion", ylab="Emision")
