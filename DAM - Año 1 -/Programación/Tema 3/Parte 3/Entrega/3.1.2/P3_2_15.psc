Proceso P3_2_15
	Definir num,buc,acum Como Entero;
	Escribir"Introduzca un n�mero para saber si es primo";
	Leer num;
	buc <- 0;
	acum <- 0;
	Mientras buc <> num Hacer
		buc <- buc+1;
		Si num mod(buc) = 0 Entonces
			acum <- acum+1;
		FinSi
	FinMientras
	Si acum = 2 Entonces
		Escribir"El n�mero introducido es primo";
	SiNo
		Escribir "No se considera un n�mero primo";
	FinSi
FinProceso
