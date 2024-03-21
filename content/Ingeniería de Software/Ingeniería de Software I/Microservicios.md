# Microservicios

%%
Date:: [[2024-03-21]]
Course:: [[Ingeniería de Software I]]
Source:: [[Arquitectura del Software]]
%%

![[Pasted image 20240321155202.png]]

- Es una manera de poder dividir el back-end en múltiples partes que se comunican por separado
	- Cada parte (o servicio) puede comunicarse y tiene una funcionalidad específica
	- Muy ventajoso para proyectos grandes.
	- Podemos utilizar distintos lenguajes, BBDD, etc.

- Cuando una app comienza a crecer (más usuarios), la aplicación ya no puede ser monolítica
	- Aumentan las funcionalidades, y la complejidad
	- Dividimos un monolito en partes (**servicios**) más específicas
		- Cada servicios tiene una funcionalidad específica.
	- A más usuarios, necesitamos un mayor *performance*

- Cada servicio se caracteriza por el input y el output. No interesa lo que pasa dentro
	- Utilizamos protocolos http para la comunicación 


- Que tan pequeño debe ser un servicio?
	- Es relativo. Depende del tamaño de la empresa, y la cantidad de programadores disponibles para el desarrollo
	- También, cada parte va a consumir sus propios recursos ($)
