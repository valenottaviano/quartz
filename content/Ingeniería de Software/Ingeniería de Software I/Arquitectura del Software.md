# Arquitectura del Software

%%
Date:: [[2024-03-21]]
Course:: [[Ingeniería de Software I]]
Source:: [[]]
%%

![[ailin.excalidraw]]

- Es el diseño de más alto nivel de la estructura de un sistema
	- Define, de manera abstracta, los componentes que llevan a cabo alguna tarea de computación, sus interfaces y la comunicación entre ellos.
	- Toda la arquitectura debe ser implementable en un arquitectura física, que consiste simplemente en determinar que computadora tendrá asignada cada tarea.
		- Estructura de servidores, ubicaciones físicas.

![[Pasted image 20240321144254.png]]

- La arquitectura de software es el nivel conceptual más alto de un sistema en su ambiente


- Evolución de las arquitecturas de software
	- Aplicaciones monolíticas![[Pasted image 20240321154843.png]]
		- Se ejecutaban totalmente en una PC.
	- Arquitectura cliente servidor
		- El servidor proporcionaba datos, y del otro lado un cliente (pesado, hacían mucho procesamiento)
		- Alto tráfico en la red
	- Arquitectura de 3 niveles
		- cliente - servidor- base de datos
	- Arquitectura de n niveles
		- Los clientes ya son livianos. Los servidores intermedios se encargan de todo el procesamiento

- La arquitectura envuelve un conjunto de decisiones estratégicas de diseño, lineamientos, reglas y patrones que restringen el diseño y la implementación de un software.

## Arquitectura de Krunchen
![[Pasted image 20240321144750.png]]
- Pasa por todas las fases de desarrollo de un producto

## Arquitectura IODA ([[Metodología IODA]])

- Arquitectura de hardware
- Arquitectura de software
- Arquitectura de operación
- Arquitectura de información

## Pasos para el diseño de una arquitectura
La arquitectura está guiada por: los requerimientos

1. Analizar requerimientos
	1. Requerimientos de performance
	2. Requerimientos de distribución
	3. Requerimiento de movilidad
	4. Requerimiento de crecimiento
	5. otros requerimientos
2. Diseño de la arquitectura. Se debe elegir un modelo de la arquitectura (alguno aceptado por la industria)
3. Validación de la arquitectura