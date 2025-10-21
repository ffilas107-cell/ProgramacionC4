Algoritmo MayusculaOMinuscula
	Definir caracter Como Caracter
	
    Escribir "Ingrese un carácter: "
    Leer caracter
	
    Si caracter >= "A" Y caracter <= "Z" Entonces
        Escribir "El carácter es una letra mayúscula."
    Sino
        Si caracter >= "a" Y caracter <= "z" Entonces
            Escribir "El carácter es una letra minúscula."
        Sino
            Escribir "El carácter no es una letra."
        FinSi
    FinSi
FinAlgoritmo
