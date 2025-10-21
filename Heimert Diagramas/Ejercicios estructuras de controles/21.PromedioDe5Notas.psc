Algoritmo PromedioDe5Notas
	Definir nota, suma, promedio Como Real
    suma <- 0
	
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese la nota ", i, ": "
        Leer nota
        suma <- suma + nota
    FinPara
	
    promedio <- suma / 5
    Escribir "El promedio de las 5 notas es: ", promedio
FinAlgoritmo
