#1. Qué cantidad de dinero sobra al repartir 10000$ entre 3 personas?
residuo <- 10000 %% 3
residuo

#2. ¿Es el número 4560 divisible por 3?
op <- 4561 %% 3
resultado <- ""
if (op == 0) {
  resultado <- "Es divisible"
  print(resultado)
} else {
  resultado <- "NO es divisible"
  print(resultado)
}

#3. Construya un vector con los números enteros del 2 al 87. 
#¿Cuáles de esos números son divisibles por 7?
z <- c(2:87)
z[z%%7==0]

4. #Construya dos vectores, el primero con los números enteros desde 7 hasta 3,
#el segundo vector con los primeros cinco números positivos divisibles por 5. 
#Sea A la condición de ser par en el primer vector. Sea B la condición de ser 
#mayor que 10 en el segundo vector. 
#¿En cuál de las 5 posiciones se cumple A y B simultáneamente?

a <- c(7:3)
a
b <- c(5:100)
b <- b[b%%5==0]
b <- b[1:5]
b

vect_par = a[a%%2==0]
vect_par
mayor_10 = b[b>10]
mayor_10

#5. Consulte este enlace en el cual hay una anéctoda de Gauss niño. Use R para 
#obtener el resultado de la suma solicitada por el profesor del niño Gauss.

vector_100 <- c(1:100)
conteo <- 0
for(i in vector_100){
   conteo <- conteo + i
}
conteo

#6. Construya un vector con los siguientes elementos: 1, -4, 5, 9, -4. 
#Escriba un procedimiento para extraer las posiciones donde está el 
#valor mínimo en el vector.
#pendiente
a <- c(1, -4, 5, 9, -4)
vm <- which.min(a)
a[vm]

#7. Calcular 8!
fact <- 1
for (i in 1:8) {
  fact <- fact * i
}
fact

#8. Evaluar la siguiente suma ∑i=7i=3ei
x <- 0
for(i in 3:7){
  x <- x + exp(i)
}
x 

#9. Evaluar la siguiente productoria ∏i=10i=1log√i
x <- 1
for(i in 1:10){
  x <- x * log(sqrt(i))
}
x

#10. Construya un vector cualquiera e inviertalo, es decir, 
#que el primer elemento quede de último, el segundo de penúltimo y así sucesivamente. Compare su resultado con el de la función rev.
#pendiente
b <- c(1:10)
b
b <- sort(b, decreasing = True)
b

#11. Create the vector: 1,2,3,…,19,20.
vect <- c(1:20)
vect

#12. Create the vector: 20,19,…,2,1.
tcev <- c(20:1)
tcev

#13.Create the vector: 1,−2,3,−4,5,−6,…,19,−20.
z <- c(1, -2, 3, -4, 5, -6) 
#pendiente
  
  

#15. Calculate the following: ∑100i=10(i3+4i2) and ∑25i=1(2ii+3ii2)


#16. Read the data set available in: https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt
url <- 'https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt'
df <- read.table(url,header = TRUE)

#17. Use a code to obtain the number of variables of the data set.
length(df[1,])

#18. Use a code to obtain the number of countries in the data set.
v_countries <- distinct(df, Pais)
v_countries
count(v_countries)
n_distinct(select(df, Pais)) 

#19. Which is the country with the higher population?
maximo <- max(df$poblacion)
maximo
df[df$Pais == maximo]

#20.Which is the country with the lowest literacy rate?
literacy <- min(df$alfabetizacion)
literacy
out <- df[df$Pais == literacy]
out

#21. ¿Qué valor de verdad tiene la siguiente afirmación? “Los resultados de la 
#función floor y trunc son siempre los mismos”.


# En R hay unas bases de datos incluídas, una de ellas es la base de datos 
# llamada mtcars. Para conocer las variables que están en mtcars usted 
# puede escribir en la consola ?mtcars o también help(mtcars). 
# De la base mtcars obtenga bases de datos que cumplan las siguientes 
# condiciones.


#22. Autos que tengan un rendimiento menor a 18 millas por galón de combustible
str(mtcars)
mtcars[mtcars$mpg < 18,]

# 23. Autos que tengan 4 cilindros.
mtcars[mtcars$cyl == 4,]

# 24. Autos que pesen más de 2500 libras y tengan transmisión manual.
mtcars[mtcars$wt > 2.500 & mtcars$am == 1 ,]

