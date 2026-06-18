//Ejercicio 1. Múltiplos de 2 y de 3 Crea un algoritmo que: 
//a. Pida un número entero por pantalla. 
//b. Llame a un procedimiento que imprima si ese número es múltiplo de 2, múltiplo de 3, o múltiplo de 2 y de 3. 
//Parámetros: el número introducido por el usuario (entero). Retorno: ninguno. 

SubProceso MultiplosDe2y3(numero)
	
	Si numero MOD 2 = 0 y numero MOD 3 = 0 Entonces
		Escribir "es multiplo de 2 y de 3"
	SINO 
		SI numero MOD 2 = 0 Entonces
		Escribir "es multiplo de 2"
	SINO
	Si numero MOD 3 = 0 Entonces
		Escribir "es multiplo de 3"
	SINO 
	Escribir 'no es Multiplo De 2 ni de 3'
	FinSi
	fin si
	FinSi

	
FinSubProceso

Algoritmo ejercicio1
	definir n Como Entero
	escribir 'escribir un numero'
	
	leer n
	MultiplosDe2y3(n)

FinAlgoritmo