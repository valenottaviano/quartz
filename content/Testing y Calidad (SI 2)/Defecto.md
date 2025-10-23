# Defecto

%%
Date:: [[2025-10-23]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%


- Definición
	- Es un desperfecto en un componente o sistema, que puede causar que el componente o sistema falle en desempeñar las funciones requeridas.
- Componentes de un defecto
	- Identificador (ID), código de identificación del defecto (ej: TC = test case; DM = defecto mejora).
	- Título o resumen, menciona en una linea el fallo que ocurre
	- Resultado actual
	- Pasos para reproducirlo
	- Resultado esperado
	- Prioridad y severidad


- Severidad
	- Es el grado de impacto que tiene un defecto en el desarrollo u operación de un componente o sistema
	- Son cosas tan graves que en el mismo sistema imposibilita hacer otras cosas
	- Clasificación
		- Bloqueante: Inhibe el funcionamiento del resto del sistema
		- Crítica: Afecta una función/datos críticos del sistema
		- Mayor
		- Media
		- Baja
		- Trivial
- Prioridad
	- Se refiere al **orden en que debe corregirse el defecto**. Mide **cuán urgente es resolverlo**, desde el punto de vista del negocio o del proyecto.
	- Clasificación
		- Crítico
		- Alto
		- Medio
		- Bajo

Ej: Un error de ortografía tiene una severidad trivial para el sistema, pero para una empresa puede ser de prioridad alta ya que da mala imagen.
- La severidad la define el tester, la prioridad el lider de proyecto


Ciclo de vida de un defecto
1. Alguien reporta un nuevo defecto (estado NUEVO)
2. Se asigna al equipo de desarrollo (estado ASIGNADO)
	1. Se soluciona?  (estado CORREGIDO)
		1. Se despliega en entorno de prueba para retest. Y se CIERRA. Si falla el retest, se lo vuelva asignar
	2. No se soluciona? No se puede reproducir o se rachaza (estado RECHAZADO)