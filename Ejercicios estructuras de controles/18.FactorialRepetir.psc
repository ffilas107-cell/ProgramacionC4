Algoritmo FactorialRepetir
	Definir num, i, factorial Como Entero
    factorial <- 1
    i <- 1
	
    Escribir "Ingrese un número entero: "
    Leer num
	
    Repetir
        factorial <- factorial * i
        i <- i + 1
    Hasta Que i > num
	
    Escribir "El factorial de ", num, " es: ", factorial
FinAlgoritmo
