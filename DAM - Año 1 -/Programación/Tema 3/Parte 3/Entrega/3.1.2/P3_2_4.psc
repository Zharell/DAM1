Proceso P3_2_4
	//Bloque de definiciones
	Definir num Como Real;
	//Bloque de instrucciones
	Escribir "Introduzca un n�mero positivo para saber su ra�z cuadrada";
	Leer num;
	Mientras num < 0 Hacer
		Escribir "Error, no se admiten n�meros negativos, Introduzca un n�mero positivo para saber su ra�z cuadrada";
		Leer num;
	FinMientras
	Escribir "La ra�z cuadrada de ",num," es la siguiente:";
	num <- rc(num);
	Escribir num;
FinProceso