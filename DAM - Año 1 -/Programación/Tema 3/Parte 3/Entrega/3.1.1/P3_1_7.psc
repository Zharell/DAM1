Proceso P3_7_1
	
	//Bloque de definiciones
	Definir anno Como Entero;
	
	//Bloque de introducci�n
	Escribir "Introduzca el a�o para comprobar si es bisiesto";
	Leer anno;
	
	//Bloque de instrucciones
	Si anno mod 4 = 0 Entonces
		Escribir anno," Es un a�o bisiesto";
		
	Sino 
		Si anno mod 100 = 0 y anno mod 400 = 0 Entonces
			Escribir "Es un a�o bisiesto";
			
		SiNo
			Escribir "No se considera un a�o bisiesto";
			
		FinSi
		
	FinSi

	
	
	


	
	
	
	
	
	
FinProceso
