Algoritmo TablaDeMultiplicar
	Definir num, resultado Como Entero
	
    Escribir "Ingrese un número: "
    Leer num
	
    Para i <- 1 Hasta 12 Con Paso 1 Hacer
        resultado <- num * i
        Escribir num, " x ", i, " = ", resultado
    FinPara
FinAlgoritmo
