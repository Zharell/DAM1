Proceso ejercicio_6
	
	//Bloque de secci�n
	Definir nom Como Caracter;
	Definir pre Como Real;
	Definir uni Como Entero;
	Definir unic Como Real;
	Definir pfinalu Como Real;
	Definir pfinal Como Real;
	Definir ivau Como Real;
	Definir iva Como Real;
	
	//Instrucciones principales
	Escribir "Introduzca el nombre del art�culo";
	Leer nom;
	Escribir "Introduzca el valor del art�culo";
	Leer pre;
	Escribir "Introduce el n�mero de art�culos";
	Leer uni;
	
	//Segundo bloque
	unic <- pre*uni;
	ivau <- pre*0.19;
	iva <- unic*0.19;
	pfinalu <- pre+ivau;
	pfinal <- unic+iva;
	
	//Controles
	Mientras pre <=0 Hacer
		Escribir "No se considera un precio v�lido, introduzca un valor positivo";
		Escribir "Introduzca el valor del art�culo";
		Leer pre;
	FinMientras

	Mientras uni <=0 Hacer
		Escribir "No se considera una cantidad v�lida, introduzca una cantidad positiva";
		Escribir "Introduce el n�mero de art�culos";
		Leer uni;
		
	FinMientras
	
	//Instrucciones finales
	Escribir "Su precio de venta por el articulo ", nom ," es el siguiente ", pfinalu;
	Escribir "Su precio de venta por todos los ", nom ," es el siguiente ", pfinal;
	Escribir "El IVA del ", nom ," es el siguiente ", ivau;
	Escribir "El IVA de los ", nom, " es el siguiente ", iva ;
	Escribir "El precio sin modificar del ", nom ," es el siguiente ", pre;
	Escribir "El precio sin modificar de los ", nom ," es el siguiente ", unic;
	
FinProceso
