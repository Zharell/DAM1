Proceso P3_1_13
	
	//Bloque de definiciones
	Definir ope,cache Como Real;
	Definir opci Como Entero;
	
	//Bloque de variables
	opci <- 0;
	
	//Bloque de instrucciones
	Mientras opci > 4 o opci < 1 Hacer
		
		//Bloque de introducci�n por teclado
		Escribir "Seleccione la operaci�n que desea utilizar";
		Escribir "Seleccione - 1 - para sumar";
		Escribir "Seleccione - 2 - para restar";
		Escribir "Seleccione - 3 - para multiplicar";
		Escribir "Seleccione - 4 - para dividir";
		Leer opci;
		
		Segun opci Hacer
			1:
				Escribir "Introduzca los valores que desea sumar";
				Escribir "Introduzca el primer valor";
				Leer ope;
				Escribir "Introduzca el segundo valor";
				leer cache;
				ope <- (ope+cache);
				Escribir "La suma de los valores es la siguiente: ", ope;
				
			2:
				Escribir "Introduzca los valores que desea restar";
				Escribir "Introduzca el primer valor";
				Leer ope;
				Escribir "Introduzca el segundo valor";
				leer cache;
				ope <- (ope-cache);
				Escribir "La resta de los valores es la siguiente: ", ope;
				
			3:
				Escribir "Introduzca los valores que desea multiplicar";
				Escribir "Introduzca el primer valor";
				Leer ope;
				Escribir "Introduzca el segundo valor";
				leer cache;
				ope <- (ope*cache);
				Escribir "La multiplicaci�n de los valores es la siguiente: ", ope;
				
			4:
				Escribir "Introduzca los valores que desea dividir";
				Escribir "Introduzca el primer valor";
				Leer ope;
				Escribir "Introduzca el segundo valor";
				leer cache;
				ope <- (ope/cache);
				Escribir "La divisi�n de los valores es la siguiente: ", ope;
				
		De otro Modo:	
			Escribir "Ha seleccionado una opci�n inv�lida, por favor, repita la selecci�n";
			
		FinSegun
		
	Finmientras

FinProceso
