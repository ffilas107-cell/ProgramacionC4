Algoritmo ValorAbsoluto
	Definir num, absoluto Como Real
    Escribir "Ingrese un número real: "
    Leer num
    Si num < 0 Entonces
        absoluto <- num * (-1)
    Sino
        absoluto <- num
    FinSi
    Escribir "El valor absoluto es: ", absoluto
FinAlgoritmo
