Algoritmo ContarNumerosHastaCero
	Definir num, contador Como Entero
    contador <- 0
	
    Escribir "Ingrese un número (0 para terminar): "
    Leer num
	
    Mientras num <> 0 Hacer
        contador <- contador + 1
        Escribir "Ingrese otro número (0 para terminar): "
        Leer num
    FinMientras
	
    Escribir "Cantidad de números ingresados: ", contador
FinAlgoritmo
