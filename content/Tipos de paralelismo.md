# Tipos de paralelismo

%%
Date:: [[2024-03-22]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Conceptos de paralelismo]]
%%

En computación, el paralelismo se refiere a la capacidad de realizar múltiples tareas simultáneamente, lo que puede mejorar significativamente el rendimiento de los sistemas. Existen diferentes tipos de paralelismo, entre los cuales se destacan el paralelismo implícito, el paralelismo explícito y el modelo de clasificación de Flynn.

## Paralelismo Implícito
- Principalmente el hardware o duplicidad de recursos
El paralelismo implícito se refiere a la capacidad de un sistema para realizar operaciones simultáneas sin requerir una intervención directa del programador. En este tipo de paralelismo, las tareas se ejecutan de forma automática y transparente al software, lo que significa que el programador no necesita especificar cómo se deben distribuir las tareas entre los procesadores. El principal beneficio del paralelismo implícito es la mejora en el rendimiento sin necesidad de modificar el código existente.

- **Segmentación**: La segmentación es una técnica que divide la ejecución de una instrucción en varias etapas secuenciales, permitiendo que diferentes partes de la instrucción se ejecuten simultáneamente en diferentes unidades de hardware. Cada etapa se encarga de una parte específica de la instrucción, lo que aumenta la eficiencia al permitir que múltiples instrucciones se procesen al mismo tiempo. Esta técnica se utiliza en procesadores segmentados, donde cada etapa del procesador se encarga de una parte de la ejecución de la instrucción.
- **División funcional**: Por otro lado, la división funcional implica la separación de las funciones de un procesador en unidades especializadas que trabajan de forma simultánea en diferentes partes de una tarea. Cada unidad funcional se encarga de una tarea específica, como el cálculo aritmético, la gestión de memoria o la ejecución de instrucciones, lo que permite que múltiples funciones se realicen al mismo tiempo. Esta división funcional mejora la eficiencia al distribuir la carga de trabajo entre las diferentes unidades funcionales del procesador.

## Paralelismo Explícito
- Principalmente en la programación y segmentación de tareas
El modelo de clasificación de Flynn es una forma de categorizar los sistemas informáticos según la cantidad de instrucciones y datos que pueden procesar simultáneamente. Este modelo distingue entre cuatro tipos principales:
![[Pasted image 20240322171034.png]]
1. **SISD (Single Instruction, Single Data)**: En este tipo de sistema, un único procesador ejecuta una sola instrucción sobre un único conjunto de datos en cada ciclo de reloj. Es el tipo más común y representa la arquitectura tradicional de un solo procesador.
2. **SIMD (Single Instruction, Multiple Data)**: En los sistemas SIMD, un único procesador ejecuta la misma instrucción sobre múltiples conjuntos de datos simultáneamente. Este enfoque se utiliza en computación paralela para realizar operaciones en paralelo sobre conjuntos de datos.
3. **MISD (Multiple Instruction, Single Data)**: En este tipo de sistema, múltiples procesadores ejecutan diferentes instrucciones sobre un único conjunto de datos. Aunque menos común en la práctica, se ha explorado en contextos especializados como el procesamiento de señales.
4. **MIMD (Multiple Instruction, Multiple Data)**: En los sistemas MIMD, múltiples procesadores ejecutan diferentes instrucciones sobre múltiples conjuntos de datos al mismo tiempo. Este tipo de arquitectura se encuentra en sistemas multiprocesador y en computación distribuida, donde cada procesador puede ejecutar instrucciones de forma independiente.

## Sistemas Fuertemente Acoplados

En los sistemas fuertemente acoplados, también conocidos como sistemas con memoria compartida o multiprocesadores, todos los procesadores acceden a una memoria central compartida. Este tipo de sistemas presenta ciertas características:

**Ventajas:**

- Optimización de recursos al compartir la memoria entre los procesadores.
- Mayor simplicidad en la programación, a pesar de requerir cuidado para evitar interacciones no deseadas entre los programas en ejecución.

**Desventajas:**

- Posible cuello de botella en la memoria central debido a la concentración de accesos.
- Requiere una programación cuidadosa para evitar conflictos y garantizar un funcionamiento adecuado.

## Sistemas Débilmente Acoplados

En contraste, los sistemas débilmente acoplados, también llamados sistemas distribuidos o sistemas con memoria distribuida, asignan a cada elemento de procesamiento una memoria local donde almacena sus datos. Algunas características de estos sistemas son:

**Ventajas:**

- Autonomía completa de cada elemento de procesamiento al tener su propia memoria local.
- Ausencia de conflictos de memoria al distribuirse entre los procesadores.
- Eliminación de interacciones no deseadas entre los procesadores al no compartir memoria.

![[Pasted image 20240322172013.png]]