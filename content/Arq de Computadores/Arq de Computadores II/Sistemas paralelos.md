# Sistemas paralelos

%%
Date:: [[2024-04-05]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[]]
%%

## Jerarquía de paralelismo
1. Nivel proceso (hardware puro)
   Suele estar relacionado con el aumento de hardware (micro, nucleos)
2. Nivel tarea
3. Nivel instrucción
   Suele estar más relacionado con el tratamiento a nivel software, segmentados)
4. Nivel intra instrucción (software puro)

- [[Grado de paralelismo]]
- [[Grano de paralelismo]]
- [[Escalabilidad y fiabilidad]]


## Problemas

![[Pasted image 20240412161505.png]]
a) $$MIPS=\frac{f}{CPI} \Rightarrow CPI =\frac{f}{MIPS}$$
b) Ahora el procesador necesita dos ciclos de reloj para acceder a memoria porque aumentamos la velocidad del procesador, pero la memoria ram sigue siendo la misma.