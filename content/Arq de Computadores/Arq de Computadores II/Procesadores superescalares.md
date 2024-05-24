# Procesadores superescalares

%%
Date:: [[2024-05-24]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[]]
%%

## Superescalares vs Supersegmentados
![[Pasted image 20240524164232.png]]
- Instrucción completa con cuatro sub-ciclos
- Superescalaridad -> Groseramente, tener más procesadores (a nivel hardware).
- Supersegmentación -> Poder dividir las tareas a y ejecutarlas por separado (a nivel software). 


Los procesadores **supersegmentados** dividen las etapas del pipeline en múltiples sub-etapas más cortas, permitiendo que haya varias instrucciones en la misma etapa al mismo tiempo. Esto permite aumentar la frecuencia de reloj del procesador, pero no necesariamente la ejecución paralela de instrucciones. La supersegmentación se puede ver como aplicar dos veces el concepto de segmentación: primero a nivel global del pipeline, y luego internamente en cada etapa.

Los procesadores **superescalares** son capaces de ejecutar múltiples instrucciones simultáneamente en diferentes unidades funcionales (como ALUs, FPUs, etc.), siempre que no haya dependencias entre ellas. Esto se logra mediante un diseño de hardware complejo que incluye un despachador que analiza dinámicamente las instrucciones en busca de paralelismo. El grado de superescalaridad se refiere al número máximo de instrucciones que se pueden ejecutar en paralelo en una etapa concreta del pipeline.

Lo esencial del enfoque superescalar es su habilidad para ejecutar instrucciones en diferentes cauces de manera independiente y concurrente. El concepto puede llevarse más lejos permitiendo que las instrucciones se ejecuten en un orden diferente al del programa. La Figura 14.1 muestra, en términos generales, el planteamiento superescalar. Hay múltiples unidades funcionales, cada una de las cuales está implementada como un cauce segmentado, que admiten la ejecución en paralelo de varias instrucciones. En el ejemplo, dos operaciones enteras, dos de coma flotante y una de memoria (carga o almacenamiento) pueden estar ejecutándose en el mismo instante.

![[Pasted image 20240524163830.png]]

