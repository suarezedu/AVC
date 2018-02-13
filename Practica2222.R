####Ejercicio 1

Id<-as.numeric(gl(4,3))

Letter<-c("a","b","c")

x=seq(1,43,along.with=Id)

y=seq(-20,0,along.with=Id)




df<-data.frame(Id,Letter,x,y)

View(df)

####Ejercicio 2

df1.1<-subset(df,Letter=="a",select=c(x,y))

df2.1<-subset(df,Letter=="b",select=c(x,y))

df3.1<-subset(df,Letter=="c",select=c(x,y))

View(df1.1)

dfn<-data.frame(df1.1,df2.1,df3.1)

View(dfn)




####Ejercicio 3

Id<-1:4

Age<-c(14,12,15,10)

Sex<-c("F","M","M","F")

Code<-c("a","b","c","d")

df1<-data.frame(Id,Age)

df2<-data.frame(Id,Sex,Code)

df2$Id<-NULL

M<-data.frame(df1,df2)

View(M)




####Ejercicio 4 

id2<-4:1

score<-c(100,98,94,99)




df3<-data.frame(id2,score)

df3$id2<-NULL

df3$score<-score[4:1]

N<-data.frame(M,df3)

View(N)




####Ejercicio 5

N$Sex<-NULL

N$Code<-NULL

View(N)

values<-c(Id,Age,score[4:1])

ind<-c(rep("Id",4),rep("Age",4),rep("score",4))

N2<-data.frame(values,ind)

View(N2)




####Ejercicio 6

#mean_tree<-c(mean(trees[,1]),mean(trees[,2]),mean(trees[,3]))

#min_tree<-c(min(trees[,1]),min(trees[,2]),min(trees[,3]))

#max_tree<-c(max(trees[,1]),max(trees[,2]),max(trees[,3]))

#sum_tree<-c(sum(trees[,1]),sum(trees[,2]),sum(trees[,3]))

#A=t(as.matrix(data.frame(mean_tree,min_tree,max_tree,sum_tree)))

#View(A)




####Ejercicio6 

Girth<-c(mean(trees[,1]),min(trees[,1]),max(trees[,1]),sum(trees[,1]))

Height<-c(mean(trees[,2]),min(trees[,2]),max(trees[,2]),sum(trees[,2]))

Volume<-c(mean(trees[,3]),min(trees[,3]),max(trees[,3]),sum(trees[,3]))

nom<-c("mean_tree","min_tree","max_tree","sum_tree")

A=data.frame(Girth,Height,Volume,row.names=nom)

View(A)




####Ejercicio 7 *
newdata <- A[order(Girth,Height),]
View(newdata)


nombres<-c("mean","min","max","tree")

row.names(A)<-nombres

View(A)

####Ejercicio 8 *correr
df<-data.frame()
Ints<-integer()
Logicals<-logical()
Doubles<-double()
Characters<-character()
df<-data.frame(Ints,Logicals,Doubles,Characters)
View(df)

####Ejercicio 9  *
X=c(1,2,3,1,4,5,2)
Y=c(0,3,2,0,5,9,3)

XY<-data.frame(X,Y)
View(XY)
duplicated(XY)
XY[duplicated(XY),]

####Ejercicio 10
df1<-data.frame(Titanic)
class(df1)
df2<-subset(df1,Class=="1st" & Survived=="No")
View(df2)

