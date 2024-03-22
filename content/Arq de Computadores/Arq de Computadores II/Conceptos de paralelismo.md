# Conceptos de paralelismo

%%
Date:: [[2024-03-22]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Principio del rendimiento de un microprocesador]]
%%

La necesidad del paralelismo en la computación se fundamenta en la creciente demanda de poder de procesamiento para abordar cálculos complejos en diversas áreas como la ciencia, la ingeniería, la medicina y la meteorología, entre otras. Esta necesidad surge debido a que los problemas que se enfrentan en estos campos requieren un gran volumen de cálculo que, sin el empleo de computadoras muy potentes, no podrían realizarse a una velocidad razonable.

El concepto de paralelismo en computación se refiere a la capacidad de realizar múltiples tareas o cálculos simultáneamente. En lugar de ejecutar un único cálculo de manera secuencial, el paralelismo permite dividir el trabajo en partes más pequeñas y ejecutarlas al mismo tiempo en múltiples elementos de procesamiento, como núcleos de CPU, GPU o incluso computadoras distribuidas.

Existen varios niveles de paralelismo en computación:

- **Nivel de trabajo:** Consiste en ejecutar diferentes trabajos independientes simultáneamente en distintos elementos de procesamiento. Por ejemplo, en un sistema con múltiples núcleos de CPU, cada núcleo puede ejecutar un trabajo diferente.
	- Definir procesos que se ejecutan simultáneamente e independientemente
	- Se utiliza un gestor de procesos. Administra los multi procesos que se realizan en función de la cantidad de núcleos del procesador, por ejemplo. 

- **Nivel de procedimiento:** Implica ejecutar diferentes procedimientos de un mismo programa de forma simultánea en elementos de procesamiento distintos. Esto puede lograrse mediante técnicas como el paralelismo a nivel de función.
	- Trata de ejecutar diferentes procedimientos de un mismo proceso de forma simultánea.

- **Nivel de instrucción:** Consiste en ejecutar diferentes instrucciones de un mismo programa simultáneamente. Los procesadores modernos utilizan técnicas de paralelismo a nivel de instrucción para ejecutar múltiples instrucciones en paralelo, mejorando así el rendimiento.

- **Nivel intrainstrucción:** Se refiere al paralelismo dentro de una única instrucción, donde diferentes partes de la instrucción se ejecutan simultáneamente en etapas de hardware diferentes. Esto se utiliza en arquitecturas de procesadores segmentados para mejorar la eficiencia.
	- Separo la instrucción en instrucciones mucho más chiquitas, y las ejecuto con partes de otras instrucciones
	- Procesadores segmentados. 

![[Pasted image 20240322160021.png]]

- A medida que voy bajando en los niveles, nos vamos alejando de cuestiones del hardware (en niveles altos), a técnicas de hardware (subdividir instrucciones)


## Rendimiento de los computadores con paralelismo

El rendimiento de los computadores paralelos se mide por la velocidad a la que pueden realizar operaciones básicas por unidad de tiempo.
- Esta velocidad se puede medir en unidades como MIPS (millones de instrucciones por segundo),
- MFLOPS (millones de instrucciones de punto flotante por segundo) o
- VUP (velocidad relativa al VAX-11/780).
Actualmente, se utilizan programas de prueba específicos llamados benchmarks para medir el rendimiento de un sistema, como SPEC CPU2006 para medir la CPU.

Una medida común para medir la eficiencia de un sistema es el **CPI (ciclos por instrucción)**, que representa el número medio de ciclos de reloj necesarios para ejecutar una instrucción. El tiempo de ejecución de un programa con n instrucciones viene dado por $$t = CPI * n * (\frac{1}{f})$$donde f es la frecuencia de reloj.

La eficiencia de un sistema paralelo con N procesadores se puede medir mediante la ganancia de velocidad (speedup), que compara la velocidad conseguida con N procesadores con la velocidad conseguida con un solo procesador. 

En condiciones ideales, la ganancia de velocidad ideal es $S(N)_{ideal} = N$. 

La eficiencia del sistema se calcula como $$E(N) = \frac{S(N)}{S(N)_{ideal}} =  \frac{t(1)}{N*t(N)}$$, donde t(1) es el tiempo de ejecución en un solo procesador y t(N) es el tiempo de ejecución en el sistema paralelo con N procesadores. Esta medida indica en qué medida se aprovechan los recursos del sistema.


Continúa: [[Ley de Amdahl]]