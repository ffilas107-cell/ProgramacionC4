Algoritmo VerificarContrasena
	Definir contrasena Como Cadena
	
    Repetir
        Escribir "Ingrese la contraseña: "
        Leer contrasena
        Si contrasena <> "admin123" Entonces
            Escribir "Contraseña incorrecta. Intente nuevamente."
        FinSi
    Hasta Que contrasena = "admin123"
	
    Escribir "Acceso concedido. ¡Bienvenido!"
FinAlgoritmo
