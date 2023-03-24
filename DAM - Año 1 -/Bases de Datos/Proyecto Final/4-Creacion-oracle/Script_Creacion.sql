--Borrado de tablas
DROP TABLE CONRELSOL;

DROP TABLE OBRARELSOL;

DROP TABLE SOLIJAV;

DROP TABLE CONRELOBRA;

DROP TABLE OBRAJAV;

DROP TABLE COMPJAV;

DROP TABLE DIRRELORQ;

DROP TABLE CONJAV;

DROP TABLE ORQUESJAV;

DROP TABLE DIRECJAV; 

--Creaci�n Tabla 1

CREATE TABLE DIRECJAV (
NUMDIR NUMBER(3) CONSTRAINT PK_NUMDIR PRIMARY KEY,
NOMBRE VARCHAR2(20) NOT NULL,
DIRECCION VARCHAR2(40) NOT NULL,
FECNA DATE NOT NULL,
TITULAR VARCHAR2(2) CONSTRAINT CK_TITULAR CHECK (UPPER(TITULAR)IN('SI','NO'))
);


--Creaci�n Tabla 2

CREATE TABLE ORQUESJAV (
NUMORQ NUMBER(3) CONSTRAINT PK_NUMORQ PRIMARY KEY,
NOMBRE VARCHAR2(20) NOT NULL,
DIRECCION VARCHAR2(40) NOT NULL,
TEMPORADA VARCHAR(10) CONSTRAINT CK_TEMPORADA 
	CHECK (UPPER(TEMPORADA)IN('VERANO','OTO�O','INVIERNO','PRIMAVERA')),
FECIN DATE NOT NULL,
NUMDIR NUMBER(3), 
CONSTRAINT FK_NUMDIR FOREIGN KEY (NUMDIR)
	REFERENCES DIRECJAV(NUMDIR) ON DELETE CASCADE,
NUMCOMP NUMBER(4)
);

--Creaci�n Tabla 3

CREATE TABLE CONJAV (
NUMCON NUMBER(3) CONSTRAINT PK_NUMCON PRIMARY KEY,
NOMBRE VARCHAR(15) NOT NULL,
NUMORQ NUMBER(3),
CONSTRAINT FK_NUMORQ FOREIGN KEY (NUMORQ)
	REFERENCES ORQUESJAV (NUMORQ) ON DELETE CASCADE
);

--Creaci�n Tabla 4

CREATE TABLE DIRRELORQ (
NUMDIR NUMBER(3),
NUMORQ NUMBER(3),
CONSTRAINT FK_NUMDIR_REL FOREIGN KEY (NUMDIR)
	REFERENCES DIRECJAV (NUMDIR) ON DELETE CASCADE,
CONSTRAINT FK_NUMORQ_REL FOREIGN KEY (NUMORQ)
	REFERENCES ORQUESJAV (NUMORQ) ON DELETE CASCADE,
CONSTRAINT PK_NUMDIR_NUMORQ PRIMARY KEY (NUMDIR,NUMORQ)
);

--Creaci�n table 5

CREATE TABLE COMPJAV (
NUMCOMP NUMBER(3) CONSTRAINT PK_NUMCOMP PRIMARY KEY,
NOMBRE VARCHAR(20) NOT NULL,
NUMOBRAS NUMBER(5) NOT NULL,
FECNA DATE NOT NULL,
FECDF DATE
);

--Creaci�n table 6

CREATE TABLE OBRAJAV (
NUMOBRA NUMBER(3) CONSTRAINT PK_NUMOBRA PRIMARY KEY,
TITULO VARCHAR2(30) NOT NULL,
NUMCOMP NUMBER(3),
CONSTRAINT FK_NUMCOMP FOREIGN KEY (NUMCOMP)
	REFERENCES COMPJAV (NUMCOMP) ON DELETE CASCADE
); 

--Creaci�n table 7

CREATE TABLE CONRELOBRA (
NUMCON NUMBER(3),
NUMOBRA NUMBER(3),
CONSTRAINT FK_NUMCOM_REL FOREIGN KEY (NUMCON)
	REFERENCES CONJAV (NUMCON) ON DELETE CASCADE,
CONSTRAINT FK_NUMOBRA_REL FOREIGN KEY (NUMOBRA)
	REFERENCES OBRAJAV (NUMOBRA) ON DELETE CASCADE,
CONSTRAINT PK_NUMCON_NUMOBRA PRIMARY KEY (NUMCON,NUMOBRA)
);

--Creaci�n table 8

CREATE TABLE SOLIJAV (
NUMSOLI NUMBER(3) CONSTRAINT PK_NUMSOLI PRIMARY KEY,
NOMBRE VARCHAR2(30) NOT NULL,
FECNA DATE NOT NULL,
INSTRUMENTO VARCHAR2(20) NOT NULL
);

--Creaci�n table 9

CREATE TABLE OBRARELSOL (
NUMOBRA NUMBER(3),
NUMSOLI NUMBER(3),
CONSTRAINT FK_NUMOBRA_RELSOL FOREIGN KEY (NUMOBRA)
	REFERENCES OBRAJAV (NUMOBRA) ON DELETE CASCADE,
CONSTRAINT FK_NUMSOLI_REL FOREIGN KEY (NUMSOLI)
	REFERENCES SOLIJAV (NUMSOLI) ON DELETE CASCADE,
CONSTRAINT PK_NUMOBRA_NUMSOLI PRIMARY KEY (NUMOBRA,NUMSOLI)
);

CREATE TABLE CONRELSOL (
NUMCON NUMBER(3),
NUMSOLI NUMBER(3), 
CONSTRAINT FK_NUMCON_RELSOL FOREIGN KEY (NUMCON)
	REFERENCES CONJAV (NUMCON) ON DELETE CASCADE,
CONSTRAINT FK_NUMSOLI_RELSOLI FOREIGN KEY (NUMSOLI)
	REFERENCES SOLIJAV (NUMSOLI) ON DELETE CASCADE,
CONSTRAINT PK_NUMCON_NUMSOLI PRIMARY KEY (NUMCON,NUMSOLI)
);

--Insertar en DIRECJAV
INSERT INTO DIRECJAV VALUES (1,'JAVIER LOPEZ','ENCAJERAS 12, N� 12, 1D','08/11/1995','SI');
INSERT INTO DIRECJAV VALUES (2,'ALBERTO','INVENTO 20, N� 8, 5F','02/6/1998','NO');
INSERT INTO DIRECJAV VALUES (3,'MARIO','LIBERTAD 2, N� 3, 4D','08/11/1985','SI');

--Insertar en ORQUESJAV
INSERT INTO ORQUESJAV VALUES (1,'Los Chamacos','CAOBA 1F','PRIMAVERA',SYSDATE,1,40);
INSERT INTO ORQUESJAV VALUES (2,'Nintenderos Fans','Kasukabe','OTO�O',SYSDATE,3,23);
INSERT INTO ORQUESJAV VALUES (3,'Tocadores del Cielo','Barcelona','INVIERNO',SYSDATE,1,60);

--Insertar en CONJAV - CREAR TRIGGER QUE COMPRUEBE SI ES TITULAR - 
INSERT INTO CONJAV VALUES (1,'Zelda requiem',2);
INSERT INTO CONJAV VALUES (2,'Back in York',1);
INSERT INTO CONJAV VALUES (3,'Classic News',3);

--Insertar en DIRRELORQ
INSERT INTO DIRRELORQ VALUES (3,1);
INSERT INTO DIRRELORQ VALUES (1,2);
INSERT INTO DIRRELORQ VALUES (1,1);

--Insertar en COMPJAV
INSERT INTO COMPJAV VALUES (1,'Mozart',51,'27/01/1756','05/12/1791');
INSERT INTO COMPJAV VALUES (2,'Beethoven',45,'16/12/1770','26/03/1827');
INSERT INTO COMPJAV VALUES (3,'El Pepe',5,'12/04/1987',null);
INSERT INTO COMPJAV VALUES (4,'Nintendo',300,'12/04/2006',null);

--Insertar en OBRAJAV
INSERT INTO OBRAJAV VALUES (1,'Allegro',1);
INSERT INTO OBRAJAV VALUES (2,'Menuetto y Trio',1);
INSERT INTO OBRAJAV VALUES (3,'La bemol mayor',2);
INSERT INTO OBRAJAV VALUES (4,'Romanza',2);
INSERT INTO OBRAJAV VALUES (5,'La bacaner�a',3);
INSERT INTO OBRAJAV VALUES (6,'BacanYork',3);
INSERT INTO OBRAJAV VALUES (7,'Menol klk',3);
INSERT INTO OBRAJAV VALUES (8,'Aria Song',4);

--Insertar en CONRELOBRA
INSERT INTO CONRELOBRA VALUES (3,2);
INSERT INTO CONRELOBRA VALUES (3,3);
INSERT INTO CONRELOBRA VALUES (2,6);
INSERT INTO CONRELOBRA VALUES (1,8);

--Insertar en SOLIJAV
INSERT INTO SOLIJAV VALUES (1,'El Tartas','03/05/1990','Viol�n');
INSERT INTO SOLIJAV VALUES (2,'Federico','20/02/1983','Tambor');
INSERT INTO SOLIJAV VALUES (3,'Antonio','09/11/1975','Viol�n');

--Insertar en OBRARELSOL
INSERT INTO OBRARELSOL VALUES (1,1);
INSERT INTO OBRARELSOL VALUES (7,1);

--Insertar en CONRELSOL
INSERT INTO CONRELSOL VALUES (2,2);
INSERT INTO CONRELSOL VALUES (1,3);