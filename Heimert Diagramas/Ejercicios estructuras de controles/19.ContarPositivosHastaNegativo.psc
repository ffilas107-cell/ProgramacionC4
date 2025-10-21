Algoritmo ContarPositivosHastaNegativo
	Definir num, contador Como Entero
    contador <- 0
	
    Repetir
        Escribir "Ingrese un número (negativo para terminar): "
        Leer num
        Si num >= 0 Entonces
            contador <- contador + 1
        FinSi
    Hasta Que num < 0
	
    Escribir "Cantidad de números positivos ingresados: ", contador
FinAlgoritmo
