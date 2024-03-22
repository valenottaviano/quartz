# Dependencias del paralelismo

%%
Date:: [[2024-03-22]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Conceptos de paralelismo]]
%%

Las dependencias del paralelismo se refieren a las relaciones entre diferentes procesos que pueden afectar la ejecución simultánea de estos procesos en un sistema paralelo. Estas dependencias pueden ser de varios tipos:

- **Dependencias de datos**:
	- **Dependencias de flujo**: un proceso depende de otro si sigue en el orden de programa y utiliza la salida del primero como entrada.
	- **Antidependencias**: un proceso depende de otro si su salida se utiliza como entrada en el primero.
	- **Dependencias de salida**: dos procesos dependen si escriben en la misma variable.
	- **Dependencias de entrada/salida**: ocurren cuando dos procesos acceden a un mismo archivo o dispositivo para leer o escribir datos.
	- **Dependencias desconocidas**: situaciones donde existen posibles dependencias de datos que no se pueden conocer antes de la ejecución.

- **Dependencias de control**:
	- Se producen cuando el orden de ejecución de las instrucciones depende de los resultados de otras instrucciones.

- **Dependencias de recursos**
	- Especialmente cuando deben acceder a memoria.

Estas dependencias pueden influir en la forma en que se pueden paralelizar los programas, ya que si existen dependencias entre procesos, es necesario coordinar su ejecución para evitar conflictos. Por ejemplo, en un sistema paralelo, los procesos deben sincronizarse para garantizar que las dependencias de datos se resuelvan correctamente y que los resultados sean coherentes.


