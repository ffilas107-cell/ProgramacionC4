Algoritmo PrimeraYUltimaLetra
	Definir palabra Como Cadena
    Definir primera, ultima Como Cadena
    Definir long Como Entero
    Escribir "Ingrese una palabra: "
    Leer palabra
    long <- Longitud(palabra)
    primera <- Subcadena(palabra, 1, 1)
    ultima <- Subcadena(palabra, long, long)
    Escribir "La primera letra es: ", primera
    Escribir "La última letra es: ", ultima
FinAlgoritmo
