Algoritmo CadenaMasLarga
	Definir cadena1, cadena2 Como Cadena
    Definir long1, long2 Como Entero
    Escribir "Ingrese la primera cadena: "
    Leer cadena1
    Escribir "Ingrese la segunda cadena: "
    Leer cadena2
    long1 <- Longitud(cadena1)
    long2 <- Longitud(cadena2)
    Si long1 > long2 Entonces
        Escribir "La primera cadena es más larga."
    Sino
        Si long2 > long1 Entonces
            Escribir "La segunda cadena es más larga."
        Sino
            Escribir "Ambas cadenas tienen la misma longitud."
        FinSi
    FinSi
FinAlgoritmo
