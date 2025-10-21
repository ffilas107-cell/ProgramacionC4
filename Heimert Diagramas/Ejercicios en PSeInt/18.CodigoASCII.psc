Algoritmo ASCII_Caracter
		Definir c Como Caracter
		Definir cod Como Entero
		Definir i Como Entero
		
		Escribir "Ingrese un carácter: "
		Leer c
		
		cod <- 0
		
		// Mayúsculas
		Para i <- 1 Hasta 26
			Si c = Subcadena("ABCDEFGHIJKLMNOPQRSTUVWXYZ", i, 1) Entonces
				cod <- i - 1 + 65
			FinSi
		FinPara
		
		// Minúsculas
		Si cod = 0 Entonces
			Para i <- 1 Hasta 26
				Si c = Subcadena("abcdefghijklmnopqrstuvwxyz", i, 1) Entonces
					cod <- i - 1 + 97
				FinSi
			FinPara
		FinSi
		
		// Dígitos
		Si cod = 0 Entonces
			Para i <- 1 Hasta 10
				Si c = Subcadena("0123456789", i, 1) Entonces
					cod <- i - 1 + 48
				FinSi
			FinPara
		FinSi
		
		Si cod <> 0 Entonces
			Escribir "El código ASCII del carácter ", c, " es: ", cod
		Sino
			Escribir "No se pudo obtener el código (carácter no soportado)."
		FinSi
FinAlgoritmo
