Proceso P3_3_12
	
	//Bloque de definiciones
	Definir a,b,cont Como Real;
	
	//Introducci�n por teclado
	Escribir "Introduzca el n�mero";
	Leer a;
	
	//Variables
	Cont <- 0;
	b <- 0;
	b <- b+a;
	
	//Instrucciones
	Si a < 0 Entonces
		
		Mientras a <= -1 Hacer
			
			a <- trunc(a/10);	
			cont <- (cont+1);	
			
		FinMientras
		
		Escribir b," Se considera un n�mero negativo y tiene las siguientes cifras: ", cont;
		
	SiNo
		
		Mientras a >= 1 Hacer
			
			a <- trunc(a/10);	
			cont <- (cont+1);	
			
		FinMientras
		
		Escribir b," Se considera un n�mero positivo y tiene las siguientes cifras: ", cont;
		
	FinSi
	
FinProceso
