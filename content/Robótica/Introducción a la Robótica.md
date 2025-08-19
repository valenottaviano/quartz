# Introducción a la Robótica

%%
Date:: [[2025-08-12]]
Course:: [[]]
Source:: [[]]
%%

### Qué es un robot?

- No existe una definición formal.
- La palabra se hace uso indistintamente, y no hay consenso en que es un robot, y que no.

>Un robot es un agente artificial mecánico o virtual.  Es una máquina usada para realizar un trabajo automáticamente y controlada por una computadora.

Características:
- No es natural, creado artificialmente.
- Puede sentir su entorno.
- Puede manipular objetos de su entorno.
- Posee cierta inteligencia o habilidad para tomar decisiones basadas en el ambiente o en una secuencia preprogramada.
- Es programable.
- Puede moverse en uno o más ejes de rotación o traslación.
- Puede realizar movimientos coordinados.

### Mecatrónica

![[Pasted image 20250812192310.png]]
![[Pasted image 20250812192337.png]]

## Tipos de Robots

- **Robots móviles**
	- Por la tierra
		- Con patas (1, 2, 4, 6, 8)
			- Con un mínimo cerebro, 6 patas es lo mínimo para poder caminar. Tiene 2 fases y no tiene un estado de equilibrio.
		- Con ruedas (2, 3, 4, 6)
	- Por aire
	- Por agua
- **Robots fijos**
	- Antropomórficos. Suelen tener forma humana.
	- Pendulares o Delta. Normalmente sostenidos en el techo
	- SCARA. Forma muy usada en ciertas aplicaciones como inserción de componentes en plaquetas
	- Cartesianos. Parecido a impresoras 3D, CNC.
		- Suelen tener 3 grados de libertad. En el caso de que el grip rote, 4 ([[Grados de Libertad]])


## Partes de un robot
- [[Estructuras]]
- [[Sensores]]
	- Capta datos del medio ambiente. Con esos datos se los comunica a la unidad de control. No toma decisiones.
- [[Actuadores]]
	- Recibe ordenes de la unidad de control, y modifica el medio ambiente.
- [[Programas de control]] 
	-  Sistemas y modelos físicos que utiliza la unidad de control.
- [[Fuentes de energía]]
	- 
- [[Unidades de control]]
	- Es aquella que termina ecualizando todos los datos en un sistema binario, y con eso tomar decisiones.
	- Donde hay una computadora hay un software.