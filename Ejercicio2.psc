// Ejercicio 2. Tabla de multiplicar Crea un algoritmo que: 
//a. Pida un número entero por pantalla. 
//b. Llame a un procedimiento que imprima la tabla de multiplicar
// de ese número, del 1 al 10. 
//Parámetros: el número introducido por el usuario (entero). 
//Retorno: ninguno. Resultado de ejemplo: 
//Tabla de multiplicar del 35
//35 x 1 = 35 
//35 x 2 = 70 ... 
//35 x 10 = 350

SubProceso imprimirtabla(numero) 
	Definir i Como Entero
	Escribir 'tabla multiplicar 1 a 10'
	para i = 1 hasta 10 Hacer
		Escribir numero, ' x ', i , ' = ', numero * i
	FinPara
	
FinSubProceso

Algoritmo Ejercicio2
	definir Tabla Como Entero
	escribir 'diga un numero'
	leer tabla
	imprimirtabla(tabla)
	
	
FinAlgoritmo