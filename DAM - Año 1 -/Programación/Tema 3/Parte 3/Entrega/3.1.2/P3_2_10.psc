Proceso P3_2_10
	//Bloque de definiciones
	Definir ale,num Como Entero;
	//Bloque de iniciaci�n
	num <-0;
	//bucle
	ale <- aleatorio(1,100);
	Escribir ale;
	Escribir "Escribe un n�mero aleatorio";
	Leer num;
	Mientras ale <> num Hacer
		Escribir"Incorrecto, vuelva a introducir un valor";
		Leer num;
	FinMientras
	Escribir "Correcto, has adivinado el n�mero!!!";
FinProceso
