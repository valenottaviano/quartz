# Ley de Amdahl

%%
Date:: [[2024-03-15]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Principio del rendimiento de un microprocesador]]
%%


$$t(1)= S+P$$
$$t(n)= S+P/N$$

La Ley de Amdahl es un concepto fundamental en el ámbito del paralelismo computacional. Esta ley, propuesta por Gene Amdahl en 1967, establece que la mejora de un sistema paralelo está limitada por la fracción secuencial de un programa, es decir, por la parte del programa que no puede ser paralelizada. En términos matemáticos, la ganancia de velocidad de un sistema paralelo está dada por la fórmula:

$$ S = \frac{1}{(1 - f) + \frac{f}{N}} $$

Donde:
- $S$ es la ganancia de velocidad.
- $f$ es la fracción del programa que es secuencial.
- $N$ es el número de procesadores.

Esta fórmula muestra que la ganancia de velocidad disminuye a medida que la fracción secuencial $f$ del programa aumenta, lo que refleja la limitación impuesta por la parte no paralelizable del programa. Además, la Ley de Amdahl establece que no importa cuántos procesadores se agreguen, si una parte del programa no puede ser paralelizada, el rendimiento general estará limitado por esa fracción secuencial.



>[!important]
>Cualquier mejora que se introduzca, afecta en la misma proporción que el coste de la parte mejorada respecto al coste total.
> El límite de la mejora está determinado por: $1-f$, donde $f$  es la porción de tiempo de la parte mejorada



![[Pasted image 20240315171712.png]]
![[Pasted image 20240315171958.png]]
![[Pasted image 20240315171722.png]]

Ambos procesadores funcionan con un procesador de 100 MHz. ¿Cuál es la tasa de MIPS para cada uno de ellos?

CPI para el programa en cada procesador:
- MCF: 0,10 * 6 + 0,15 * 4 + 0,05 * 20 + 0,70 * 2 = 1,7. 
- MSCF 0,10 * 30 + 0,15 * 20 + 0,05 * 50 + 0,70 * 2 = 9,9. 

Por lo tanto los MIPS serán: 
- Para la MCF: $$(100 * 10^6)/1,7 = 62,5 * 10^6 ins./seg = 62,5 MIPS.$$ 
- Para la MSCF: $$(100 * 10^6)/9,9 = 10,10 * 10^6 ins./seg = 10,10 MIPS$$