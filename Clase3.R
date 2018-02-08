vector_numerico<-c(1,10,15)
vector_caracteres<-c("a","b","c")
(vector_logico<-c(T,F,T))

gcartas<-c(140,-50,20,-120,240)
gdeportivas<-c(-24,-50,100,-350,10)
dias<-c("L","Ma","Mir","J","V")
names(gcartas)<-dias
gcartas;gdeportivas

(gtotales<-gcartas+gdeportivas)
(total_cartas<-sum(gcartas))
(total_deportes<-sum(gdeportivas))
(total_semana<-sum(gtotales))
total_cartas>total_deportes

(cartas_entre_semana<-gcartas[2:4])

(cartas_inicio<-gcartas[dias[1:3]])
(mean(cartas_inicio))
gcartas["L"]

(vector_seleccion<-gcartas>0)
(vector_selec<-gdeportivas>0)
(dias_ganancias<-gcartas[vector_seleccion])
(dias_gan_apuestas<-gdeportivas[vector_selec])

#####
matrix(1:9,byrow=T,nrow=3)
prod_A<-c(460.948,314.4);prod_B<-c(290.475,247.9);prod_C<-c(309.306,165.8)
ventas<-c(prod_A,prod_B,prod_C)
ventas
(matriz_productos<-matrix(ventas,nrow=3,byrow=T))
region<-c("EU","Resto Mundo")
productos<-c("Producto A","Producto B","Producto C")
rownames(matriz_productos)<-productos
colnames(matriz_productos)<-region
View(matriz_productos)
(ventas_mundiales_prod<-rowSums(matriz_productos))
#####
prod_A2<-c(474.5,552.5);prod_B2<-c(310.7,338.7);prod_C2<-c(380.3,468.5)
ventas2<-c(prod_A2,prod_B2,prod_C2)
(matriz_productos2<-matrix(ventas2,nrow=3,byrow=T))
region2<-c("EU","Resto Mundo")
colnames(matriz_productos2)<-region2
productos2<-c("Producto A2","Producto B2","Producto C2")
rownames(matriz_productos2)<-productos2
View(matriz_productos2)
(pro_total<-rbind(matriz_productos,matriz_productos2))
(ventas_mundiales_prod2<-colSums(pro_total))
pro_total[3,2]
pro_total[,2]
mean(pro_total[,2])
(algunos_restomundo<-pro_total[1:2,2])
mean(algunos_restomundo<-pro_total[1:2,2])
pro_total/5
precio_unidad<-c(5,6,7,4,4.5,4.9)
matriz_preciounidad<-matrix(precio_unidad,ncol=2,nrow=6,byrow=F)
View(matriz_preciounidad)
pro_total/matriz_preciounidad

###
help(mtcars)
head(mtcars)##solo las primeras 6
tail(mtcars) ##ultimas 6 lineas
str(mtcars) ##resumen del data.frame

nombres<-c("Mercurio","Venus","Tierra","Marte","Jupiter","Saturno","Urano","Neptuno")
tipo<-c("solido","solido","solido","solido","gas","gas","hielo","hielo")
diametro<-c(0.382,0.949,1,0.532,11.209,9.449,4.007,3.883)
rotacion<-c(58.64,-243.02,1,1.03,.41,.43,-.72,.67)
anillos<-c(F,F,F,F,T,T,T,T)
planetas_df<-data.frame(nombres,tipo,diametro,rotacion,anillos)
View(planetas_df)
planetas_df[1,2]
planetas_df[1:3,2:4]
planetas_df[4,]
planetas_df[1:5,3]
planetas_df[1:5,"diametro"]
vector_anillos<-planetas_df[,5]
vector_anillos<-planetas_df$anillos
(planetas_df[vector_anillos,colnames(planetas_df)])
subset(planetas_df,anillos==T)
subset(planetas_df,rotacion>.4)
subset(planetas_df,diametro<1)
