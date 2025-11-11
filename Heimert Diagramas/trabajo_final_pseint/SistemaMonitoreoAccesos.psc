Proceso SistemaMonitoreoAccesos
    Definir m, k, n, i Como Entero
    Escribir "=== SISTEMA DE MONITOREO DE ACCESOS ==="
	
    // Lista de usuarios
    Escribir "¿Cuántos usuarios existen?"
    Leer m
    Dimension usuarios[m]
    Para i <- 1 Hasta m Con Paso 1 Hacer
        Escribir "Nombre del usuario ", i, ":"
        Leer usuarios[i]
    FinPara
	
    // Lista de servidores
    Escribir "¿Cuántos servidores existen?"
    Leer k
    Dimension servidores[k]
    Para i <- 1 Hasta k Con Paso 1 Hacer
        Escribir "Nombre del servidor ", i, ":"
        Leer servidores[i]
    FinPara
	
    // Número de intentos
    Escribir "¿Cuántos intentos de acceso desea registrar?"
    Leer n
	
    // Declaración de matrices y vectores
    Dimension intentos[n,3]
    Dimension IP[n]
    Dimension hora[n]
    Dimension marcadoUsuario[m]
	
    // Registrar los intentos
    Para i <- 1 Hasta n Con Paso 1 Hacer
        RegistrarIntento(i, m, k, usuarios, servidores, intentos, IP, hora)
    FinPara
	
    // Generar alertas y mostrar el reporte
    GenerarAlertas(n, m, usuarios, intentos, marcadoUsuario)
    MostrarReporte(n, usuarios, servidores, intentos, IP, hora)
FinProceso


SubProceso RegistrarIntento(i, m, k, usuarios, servidores, intentos, IP, hora)
    Definir u, s, t Como Entero
    Definir ipTemp, horaTemp Como Cadena
	
    Escribir ""
    Escribir "=== Registro de intento ", i, " ==="
	
    Escribir "Usuarios disponibles:"
    Para u <- 1 Hasta m Con Paso 1 Hacer
        Escribir u, ". ", usuarios[u]
    FinPara
	
    Repetir
        Escribir "Ingrese el número del usuario:"
        Leer u
    Hasta Que u >= 1 Y u <= m
    intentos[i,1] <- u
	
    Escribir "Servidores disponibles:"
    Para s <- 1 Hasta k Con Paso 1 Hacer
        Escribir s, ". ", servidores[s]
    FinPara
	
    Repetir
        Escribir "Ingrese el número del servidor:"
        Leer s
    Hasta Que s >= 1 Y s <= k
    intentos[i,2] <- s
	
    Escribir "Ingrese IP de origen:"
    Leer ipTemp
    IP[i] <- ipTemp
	
    Escribir "Ingrese hora (HH:MM):"
    Leer horaTemp
    hora[i] <- horaTemp
	
    Repetir
        Escribir "Tipo de intento (1 = Exitoso, 0 = Fallido):"
        Leer t
    Hasta Que t = 0 O t = 1
    intentos[i,3] <- t
	
    Si t = 1 Entonces
        Escribir "Resultado: Acceso exitoso."
    Sino
        Escribir "Resultado: Acceso FALLIDO."
    FinSi
FinSubProceso


SubProceso GenerarAlertas(n, m, usuarios, intentos, marcadoUsuario)
    Definir i, j, contador Como Entero
    Definir usuarioActual Como Cadena
	
    Para i <- 1 Hasta m Con Paso 1 Hacer
        marcadoUsuario[i] <- 0
    FinPara
	
    Escribir ""
    Escribir "=== ALERTAS DE SEGURIDAD ==="
	
    Para i <- 1 Hasta m Con Paso 1 Hacer
        contador <- 0
        Para j <- 1 Hasta n Con Paso 1 Hacer
            Si intentos[j,1] = i Y intentos[j,3] = 0 Entonces
                contador <- contador + 1
            FinSi
        FinPara
		
        Si contador >= 3 Entonces
            usuarioActual <- usuarios[i]
            Escribir "??  Alerta: Usuario ", usuarioActual, " tiene ", contador, " intentos fallidos."
            marcadoUsuario[i] <- 1
        FinSi
    FinPara
FinSubProceso


SubProceso MostrarReporte(n, usuarios, servidores, intentos, IP, hora)
    Definir i Como Entero
    Definir tipoTexto Como Cadena
	
    Escribir ""
    Escribir "=== REPORTE DE INTENTOS ==="
	
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Si intentos[i,3] = 1 Entonces
            tipoTexto <- "Exitoso"
        Sino
            tipoTexto <- "Fallido"
        FinSi
		
        Escribir "Intento ", i, ": Usuario=", usuarios[intentos[i,1]], " | Servidor=", servidores[intentos[i,2]], " | IP=", IP[i], " | Hora=", hora[i], " | Tipo=", tipoTexto
    FinPara
FinSubProceso
