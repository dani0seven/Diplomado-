
#1. Construya un vector con la primeras 20 letras MAYÚSCULAS usando la función LETTERS.
vector <- c(letters[1:20])
vector
vector <- c(toupper(letters[1:20]))
vector

#2.Construya una matriz de 10×10 con los primeros 100 números positivos pares.
a <- seq(2,200,2)
matriz1 <- matrix(seq(2,200,2), 10, 10, byrow=FALSE)
matriz1

#3. Construya una matriz identidad de dimension 3×3. Recuerde que una matriz identidad 
#tiene sólo unos en la diagonal principal y los demás elementos son cero.
v1 <- c(1,0,0)
v2 <- c(0,1,0)
v3 <- c(0,0,1)
matriz2 <- rbind(v1,v2,v3)
matriz2

#4. Construya una lista con los anteriores tres objetos creados.
mi_lista <- list(vector, matriz1, matriz2)
mi_lista

#5. Construya un marco de datos o data frame con las respuestas de 3 personas a las preguntas: 
#(a) ¿Cuál es su edad en años? (b)
#¿Tipo de música que más le gusta? (c) ¿Tiene usted pareja sentimental estable?
edad <- c(18, 24, 50, 26, 18)
edad
musica <- c('rock', 'pop', 'reggae', NA, 'metal')
pareja_estable <- c(TRUE, FALSE, NA, FALSE, FALSE)
dtFrame <- data.frame(edad, musica, pareja_estable)
dtFrame

#6. ¿Cuál es el error al correr el siguiente código? ¿A qué se debe?
edad <- c(15, 19, 13, NA, 20)
deporte <- c(TRUE, TRUE, NA, FALSE, TRUE)
comic_fav <- c(NA, 'Superman', 'Batman', NA, 'Batman')
mi_matrix <- matrix(edad, deporte, comic_fav)
mi_matrix
#R: El error se debe a que en una matriz los datos que contiene deben ser del
#mismo tipo; y Aqui hay numericos, booleanos y String





