Proceso p3_1_7
	
	//Bloque de definiciones
	Definir a,r Como Real;
	
	//Instroducci�n de teclado
	Escribir "Introduzca un n�mero para saber su r�iz";
	Leer a;
	
	//Bloque de instrucciones
	Si a > 0 Entonces
		r <- rc(a);
		Escribir "La ra�z cuadrada es la siguiente: ",r;
		
	Sino
		Escribir "Error, ha introducido un valor negativo";
		
	FinSi
FinProceso
 