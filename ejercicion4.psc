// ============================================================
// EJERCICIO 4: Posición del número más alto en array 2D
// ============================================================
// Objetivo: Crear un array de 5 filas x 7 columnas con números
// aleatorios entre 10 y 50, encontrar la posición del número
// más alto y mostrarla en pantalla.
// ============================================================

// ------------------------------------------------------------
// FUNCIÓN: PosicionMasAlta
// ------------------------------------------------------------
// Recibe un array bidimensional de 5x7 y devuelve un texto
// con la posición [fila, columna] donde se encuentra el número
// más alto. En caso de empate, devuelve la PRIMERA posición.
// ------------------------------------------------------------
Funcion resultado <- PosicionMasAlta(numero)
	
	// Variables de texto para convertir los índices numéricos
	// a cadena de caracteres y armar el resultado final
	Definir Ftextos, Ctextos Como Caracter
	Definir resultado Como Caracter
	// "mayor"       -> guarda el valor más alto encontrado hasta el momento
	// "fila"        -> controla el recorrido de filas en el bucle
	// "columna"     -> controla el recorrido de columnas en el bucle
	// "filamayor"   -> guarda la fila donde está el número más alto
	// "columnamayor"-> guarda la columna donde está el número más alto
	Definir mayor, fila, filamayor, columna, columnamayor Como Entero
	
	// Se asume que el número más alto es el primero del array [0,0]
	// Esto sirve como punto de partida para comparar con el resto
	mayor = numero[0,0]
	
	// Se inicializan en 0 porque, por ahora, el mayor está en [0,0]
	filamayor = 0
	columnamayor = 0
	
	// Recorrido completo del array fila por fila (0 a 4 = 5 filas)
	Para fila = 0 Hasta 4 Hacer
		
		// Por cada fila, se recorren todas las columnas (0 a 6 = 7 columnas)
		Para columna = 0 Hasta 6 Hacer
			
			// Se compara el valor actual con el mayor encontrado hasta ahora
			// Se usa ">" estricto para quedarse con la PRIMERA ocurrencia
			// en caso de que el mismo valor máximo aparezca varias veces
			Si numero[fila,columna] > mayor Entonces
				
				// Se encontró un número más grande: se actualiza el mayor
				mayor = numero[fila,columna]
				
				// Se guardan las coordenadas donde se encontró ese nuevo mayor
				filamayor = fila
				columnamayor = columna
				
			FinSi
			
		FinPara // Fin del recorrido de columnas
		
	FinPara // Fin del recorrido de filas
	
	// Se convierten los índices numéricos a texto
	// para poder concatenarlos en una cadena de caracteres
	Ftextos = ConvertirATexto(filamayor)
	Ctextos = ConvertirATexto(columnamayor)
	
	// Se arma el texto de retorno con el formato [fila,columna]
	// Ejemplo: si filamayor=1 y columnamayor=4 -> resultado = "[1,4]"
	resultado = '[' + Ftextos + ',' + Ctextos + ']'
	
FinFuncion // Fin de la función PosicionMasAlta


// ============================================================
// ALGORITMO PRINCIPAL
// ============================================================
Algoritmo ejercicio4
	
	// "arraybidimensional" -> array de 5 filas x 7 columnas con los números
	// "fila"               -> variable de control para recorrer filas
	// "columna"            -> variable de control para recorrer columnas
	
	Definir arraybidimensional Como Entero
	Definir fila, columna Como Entero
	
	// "posicion" -> va a guardar el texto que devuelve la función
	// Se declara Como Caracter porque recibe algo como "[2,5]"
	Definir posicion Como Caracter
	
	// Se reserva el espacio en memoria para el array de 5 filas y 7 columnas
	// Los índices van de [0,0] hasta [4,6]
	Dimensionar arraybidimensional[5,7]
	
	// ------------------------------------------------------------
	// a. CARGA DEL ARRAY CON NÚMEROS ALEATORIOS ENTRE 10 Y 50
	// ------------------------------------------------------------
	// azar(41) genera un número entre 0 y 40
	// Al sumarle 10 el rango pasa a ser de 10 a 50 (ambos inclusive)
	Para fila = 0 Hasta 4 Hacer
		Para columna = 0 Hasta 6 Hacer
			arraybidimensional[fila,columna] = azar(41) + 10
		FinPara
	FinPara
	
	// ------------------------------------------------------------
	// c. IMPRESIÓN DEL ARRAY EN PANTALLA
	// ------------------------------------------------------------
	// Se recorre el array nuevamente para mostrar sus valores
	Para fila = 0 Hasta 4 Hacer
		Para columna = 0 Hasta 6 Hacer
			// "Sin Saltar" evita el salto de línea automático
			// así todos los valores de una misma fila quedan en la misma línea
			Escribir Sin Saltar arraybidimensional[fila,columna], ' '
		FinPara
		// Al terminar cada fila se hace un salto de línea
		// para que la siguiente fila aparezca debajo
		Escribir ''
	FinPara
	
	// ------------------------------------------------------------
	// b. LLAMADA A LA FUNCIÓN Y OBTENCIÓN DEL RESULTADO
	// ------------------------------------------------------------
	// Se llama a PosicionMasAlta pasando el array completo
	// El resultado (texto con la posición) se guarda en "posicion"
	posicion = PosicionMasAlta(arraybidimensional)
	
	// Se imprime el mensaje final con la posición del número más alto
	Escribir 'La posicion en la que aparece el numero mas alto es la ', posicion
	
FinAlgoritmo // Fin del algoritmo principal