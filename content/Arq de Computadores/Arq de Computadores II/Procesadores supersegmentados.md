# Procesadores supersegmentados

%%
Date:: [[2024-04-12]]
Course:: [[Sistemas paralelos]]
Source:: [[Arquitectura de Computadores II]]
%%


Los procesadores superescalares y supersegmentados son dos tipos de procesadores que utilizan diferentes estrategias para aumentar el rendimiento y la velocidad de procesamiento.

## Procesadores superescalares 

Los procesadores superescalares son capaces de ejecutar varias instrucciones en paralelo en diferentes unidades funcionales, lo que permite un mayor rendimiento y una mayor eficiencia en el procesamiento. Estos procesadores utilizan una técnica de segmentación en varios cauces, lo que significa que pueden procesar varias instrucciones simultáneamente en diferentes etapas del procesador. La cantidad de cauces que un procesador superescalar puede tener varía, y cuantos más cauces tenga, mayor será su capacidad de procesamiento en paralelo.
- Permite ejecutar *n* instrucciones simultáneamente (nivel de paralelismo de instrucción, ILP)
- tiempo en un procesador no segmentado $$t(1,1)=n+m-1$$
- el tiempo en una máquina segmentada con *N* procesadores de *1* segmento $$t(N,1)=n + \frac{m}{N} - 1$$ por lo tanto, la ganancia de velocidad $$S(N,1)=\dfrac{N(n+m-1)}{m+N(n-1)}$$si agregamos  infinitas *m* tareas, la ganancia depende únicamente de *N*

![[Pasted image 20240412160256.png]]

## Procesadores supersegmentados 

Por otro lado, los procesadores supersegmentados utilizan una técnica de segmentación diferente, en la que cada etapa del procesador está dividida en varias subetapas o segmentos. Esto permite una mayor flexibilidad en el procesamiento, ya que cada segmento puede especializarse en una tarea específica y puede trabajar en paralelo con otros segmentos. Los procesadores supersegmentados también pueden ser dinámicamente configurables, lo que significa que pueden cambiar su configuración en tiempo de ejecución para adaptarse a diferentes tipos de cargas de trabajo.

- Para un procesador supersegmentado $$t(1,M)=n+\frac{m-1}{M}$$ por lo tanto, la ganancia de velocidad de 1 procesador con *M* segmentos $$S(1,M)=\dfrac{M(n+m-1)}{nM+m-1}$$ por lo tanto, si las tareas *m* tienden a infinito, la ganancia está dada únicamente por *M*

La segmentación aritmética es una forma específica de segmentación utilizada en procesadores supersegmentados, en la que la unidad aritmética se divide en segmentos especializados en diferentes subtareas aritméticas, como sumas, restas, multiplicaciones y divisiones. Esto permite una mayor eficiencia en el procesamiento de cálculos aritméticos complejos.


![[Pasted image 20240412160313.png]]

## Supersegmentación + Superescalaridaad

![[Pasted image 20240412160328.png]]
![[Pasted image 20240412160350.png]]

