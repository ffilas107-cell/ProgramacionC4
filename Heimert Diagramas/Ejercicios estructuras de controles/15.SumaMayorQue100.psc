Algoritmo SumaMayorQue100
	Definir num, suma Como Entero
    suma <- 0
	
    Mientras suma <= 100 Hacer
        Escribir "Ingrese un número: "
        Leer num
        suma <- suma + num
        Escribir "Suma actual: ", suma
    FinMientras
	
    Escribir "La suma total es ", suma, " (mayor que 100)."
FinAlgoritmo
