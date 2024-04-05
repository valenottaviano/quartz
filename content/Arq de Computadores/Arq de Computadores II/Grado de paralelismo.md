# Grado de paralelismo

%%
Date:: [[2024-04-05]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Sistemas paralelos]]
%%


El grado de paralelismo se refiere al número de operaciones que pueden ejecutarse simultáneamente en un sistema paralelo. Esto incluye tanto el paralelismo en el nivel de instrucciones como en el nivel de procedimientos y trabajos.

- **Paralelismo en el nivel de instrucciones**: se refiere a la capacidad de ejecutar diferentes instrucciones de una misma tarea simultáneamente. Esto puede lograrse mediante la ejecución de iteraciones diferentes de un bucle en procesadores distintos o mediante la ejecución simultánea de varias acciones de cara a la ejecución de las instrucciones en procesadores segmentados.

- **Paralelismo en el nivel de procedimientos**: se refiere a la ejecución simultánea de diferentes procedimientos de un mismo proceso en elementos de proceso diferentes. Esto puede ser útil en aplicaciones donde se necesita realizar varias tareas simultáneamente, como en el procesamiento de imágenes o en el análisis de datos.

- **Paralelismo en el nivel de trabajo**: se refiere a la ejecución simultánea de diferentes trabajos (procesos) independientes en diversos elementos de proceso. Esto puede ser manejado completamente por el gestor de procesos del sistema operativo, asignando cada trabajo a un procesador diferente.

El grado de paralelismo puede variar en función de la aplicación y del hardware utilizado. En general, a mayor grado de paralelismo, mayor será el rendimiento del sistema, aunque también es importante tener en cuenta las limitaciones del paralelismo, como la presencia de partes no paralelizables en los procesos y el overhead de comunicación entre procesadores.

La ley de Amdahl es una fórmula que describe el límite superior de la ganancia en velocidad que se puede lograr en un sistema paralelo en función del grado de paralelismo. La ley de Amdahl establece que la ganancia máxima de velocidad se alcanza cuando el sistema está completamente paralelizado, pero en la práctica, esto raramente se logra debido a la presencia de partes no paralelizables en los procesos y al overhead de comunicación entre procesadores.

