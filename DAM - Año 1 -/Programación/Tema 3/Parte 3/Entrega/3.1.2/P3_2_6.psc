Proceso P3_5_6
	//Bloque de definiciones
	Definir acu,acu2,acu0 Como Entero;
	Definir ini Como Cadena;
	Definir a Como Real;
	//Bloque de variables
	acu <- 0;
	acu2 <- 0;
	acu0 <- 0;
	//Introducci�n por teclado
	Escribir"�Desea comenzar el proceso?";
	Escribir "(�Si o no?)";
	Leer ini;
	ini <- minusculas(ini);
	//bucle
	Mientras ini = "si" Hacer
		Escribir "Introduce un n�mero para saber si es positivo, negativo o 0";
		Leer a;
		Si a > 0 Entonces
			Escribir "Es un n�mero positivo";
			acu <- acu+1;
		SiNo
			Si a = 0 Entonces
				Escribir "Su n�mero es 0";
				acu0 <- acu0+1;
			SiNo	
				Escribir "Es un n�mero negativo";
				acu2 <- acu2+1;
			FinSi
		FinSi
		Escribir "�Desea repetir el proceso?";
		Leer ini;
		ini <- minusculas(ini);
	Finmientras
	Escribir"Usted ha escrito ",acu," positivos, ",acu2," negativos y ",acu0," n�meros de valor 0";
FinProceso
