Algoritmo ContarPares
	Definir contador Como Entero
    contador <- 0
	
    Para i <- 1 Hasta 20 Con Paso 1 Hacer
        Si i % 2 = 0 Entonces
            contador <- contador + 1
        FinSi
    FinPara
	
    Escribir "La cantidad de números pares entre 1 y 20 es: ", contador
FinAlgoritmo
