Proceso P3_1_14
	
	//Bloque de definiciones
	Definir dia Como Entero;
	
	//Bloque de variables
	dia <- 0;
	
	//Bloque de instrucciones
	Mientras dia > 7 o dia < 1 Hacer
		
		Escribir "Seleccione un n�mero del 1 al 7 para saber qu� d�a de la semana es";
		Leer dia;
		
		Segun dia Hacer
			1:
				Escribir "Ha seleccionado el d�a - 1 - que ser�a el lunes";
			2:
				Escribir "Ha seleccionado el d�a - 2 - que ser�a el martes";
			3:
				Escribir "Ha seleccionado el d�a - 3 - que ser�a el mi�rcoles";
			4:
				Escribir "Ha seleccionado el d�a - 4 - que ser�a el jueves";
			5:
				Escribir "Ha seleccionado el d�a - 5 - que ser�a el viernes";
			6:
				Escribir "Ha seleccionado el d�a - 6 - que ser�a el s�bado";
			7:	
				Escribir "Ha seleccionado el d�a - 7 - que ser�a el domingo";
				
			De otro modo
				
				Escribir "Ha seleccionado un n�mero inv�lido, por favor, repita la selecci�n";
			
		FinSegun
		
	FinMientras
	
FinProceso
