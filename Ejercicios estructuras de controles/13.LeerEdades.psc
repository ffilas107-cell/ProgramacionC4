Algoritmo LeerEdades
	Definir edad Como Entero
	
    Escribir "Ingrese una edad (fuera del rango 0-120 para terminar): "
    Leer edad
	
    Mientras edad >= 0 Y edad <= 120 Hacer
        Escribir "Edad válida: ", edad
        Escribir "Ingrese otra edad: "
        Leer edad
    FinMientras
	
    Escribir "Edad fuera del rango. Programa finalizado."
FinAlgoritmo
