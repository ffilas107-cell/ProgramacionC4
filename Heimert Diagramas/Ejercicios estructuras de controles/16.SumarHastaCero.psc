Algoritmo SumarHastaCero
	Definir num, suma Como Entero
    suma <- 0
	
    Repetir
        Escribir "Ingrese un número (0 para terminar): "
        Leer num
        suma <- suma + num
    Hasta Que num = 0
	
    Escribir "La suma total es: ", suma
FinAlgoritmo
