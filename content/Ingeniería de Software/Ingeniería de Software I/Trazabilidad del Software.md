# Trazabilidad del Software

%%
Date:: [[2024-04-30]]
Course:: [[Ingeniería de Software I]]
Source:: [[]]
%%


Permite tomar un elemento de especificaciones de requisito, ya sea un Caso de Uso, una funcionalidad u otro tipo de documento similar y realizar un seguimiento encadenado en las distintas fases del desarrollo hasta alcanzar el código ejecutable.
- Identificar cada etapa del desarrollo de una funcionalidad y analizar cómo evoluciona

![[Pasted image 20240430174926.png]]
- Me permite saber si X funcionalidad de una app está alineada con un requerimiento de la solución.
- Nuestra aplicación se irá construyendo en *capas* que conformarán la app final. Cada *capa* tiene un código que hace referencia a los requerimientos iniciales.
	- Nos permite llevar un control de versiones de la app.


- Versión
	- Instancia de un elemento de configuración. Cuando el software posee una serie de funcionalidades nuevas,
- Revisión
	- Una versión que se construye sobre otra versión. Generalmente se asocia a la corrección de errores.
- Variante
	- Es una alternativa a otra versión. Pueden ser útiles para alinearse a los requerimientos del usuario (OS, por ejemplo)
- Release
	- Instancia distribuida a los clientes.
- Linea base
	- Cuando definimos una base testeada y segura para un desarrollo posterior. Es la línea de partida para nuevas versiones.
	- Un hito donde no hay vuelta atrás.