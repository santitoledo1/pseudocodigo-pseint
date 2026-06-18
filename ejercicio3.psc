//Ejercicio 3. Número más alto de un array
//Crea un algoritmo que:
//a. Cree un array de dimensión 10 con números aleatorios (1-50).
//b. Llame a una función que recorra el array y devuelva el número más alto.
//Parámetros: array con 10 números aleatorios (1-50).
//Retorno: el valor más alto (entero).
//c. Imprima el array y el valor devuelto por la función.

//Resultado de ejemplo:
//17 11 5 20 34 2 45 36 8 12
//El número más alto es el 45

Funcion Mayor = arrayAlto(numero)
	
	Definir mayor,i Como Entero
	
	mayor = numero[0]
	
	Para i = 0 Hasta 9 Hacer
		SI mayor<numero[i] Entonces
			mayor=numero[i]
		FinSi
	FinPara

Finfuncion


Algoritmo ejercicio3
	
	definir azares, i Como Entero
	
	dimension azares[10]
	
	Para i=0 hasta 9 hacer
		azares[i] = azar(50)
	FinPara
	
	para i = 0 hasta 9 Hacer
		escribir azares[i]
	FinPara
	
	Escribir 'el numero mas alto es: ' 
	Escribir arrayAlto(azares)

FinAlgoritmo