# Diseño de procesadores superescalares

%%
Date:: [[2024-05-31]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Procesadores superescalares]]
%%


El **paralelismo de la máquina** es una medida de la capacidad del procesador para sacar partido al paralelismo en las instrucciones. El paralelismo de la máquina depende del número de instrucciones que pueden captarse y ejecutarse al mismo tiempo (número de cauces paralelos) y de la velocidad y sofisticación de los mecanismos que usa el procesador para localizar instrucciones independientes.

Tanto el paralelismo en las instrucciones como el paralelismo de la máquina son factores importantes para mejorar las prestaciones. Un programa puede no tener el suficiente nivel de paralelismo en las instrucciones como para sacar el máximo partido al paralelismo de la máquina. El empleo de una arquitectura con instrucciones de longitud fija, como en un RISC, aumenta el paralelismo en las instrucciones. Por otra parte, un escaso paralelismo de la máquina limitará las prestaciones sin que importe la naturaleza del programa.

### Políticas de emisión de instrucciones

En los procesadores superescalares segmentados, la emisión de instrucciones implica localizar y ejecutar instrucciones más allá del punto de ejecución actual. Esto se puede organizar de las siguientes maneras:
1. **Orden de captura de instrucciones**: Las instrucciones se captan en el orden en que aparecen en el programa.
2. **Orden de ejecución de instrucciones**: Las instrucciones se ejecutan en el orden determinado por la disponibilidad de los recursos y la resolución de dependencias.
3. **Orden de actualización de registros y memoria**: Las instrucciones actualizan los contenidos de los registros y la memoria en un orden que puede diferir del orden de ejecución.

Las políticas de emisión se clasifican en:
- **Emisión en orden y finalización en orden**: Las instrucciones se emiten y finalizan en el orden del programa.
- **Emisión en orden y finalización desordenada**: Las instrucciones se emiten en orden pero pueden finalizar en cualquier orden.
- **Emisión desordenada y finalización desordenada**: Las instrucciones pueden emitirse y finalizar en cualquier orden, optimizando el uso de los recursos y la eficiencia.

### Renombramiento de los registros

El renombramiento de registros resuelve conflictos de almacenamiento al asignar dinámicamente registros físicos a registros lógicos. Este proceso es crucial cuando se permiten emisiones y finalizaciones desordenadas de instrucciones, lo que puede generar dependencias de salida y antidependencias. 

Por ejemplo, en el código:
```assembly
I1: R3b ← R3a op R5a
I2: R4b ← R3b + 1
I3: R3c ← R5a + 1
I4: R7b ← R3c op R4b
```
El renombramiento permite que `R3b`, `R3c` y `R3a` refieran diferentes registros físicos en diferentes momentos, evitando dependencias de salida y antidependencias, permitiendo la ejecución más eficiente de las instrucciones.

### Paralelismo de la máquina

Para mejorar el rendimiento en procesadores superescalares, se utilizan varias técnicas:
- **Duplicación de recursos**: Aumenta el número de unidades funcionales para permitir más operaciones en paralelo.
- **Emisión desordenada**: Permite la emisión de instrucciones en un orden diferente al del programa para optimizar el uso de recursos.
- **Renombramiento de registros**: Elimina las dependencias de salida y antidependencias, permitiendo una ejecución más flexible.

Un estudio en \[SMIT8\] muestra que sin renombramiento de registros, las mejoras en rendimiento son limitadas, incluso con duplicación de recursos. Con renombramiento, se logran mejoras significativas, especialmente con ventanas de instrucciones más grandes.

### Predicción de saltos

Los procesadores superescalares deben manejar eficientemente los saltos para mantener el flujo de instrucciones. Existen varias técnicas:
- **Captura de la siguiente instrucción y destino del salto**: Utilizado por el Intel 80486 para minimizar retardos.
- **Salto retardado**: Común en máquinas RISC, donde siempre se ejecuta la instrucción siguiente al salto.
- **Predicción de saltos**: Regresó con las máquinas superescalares, utilizando técnicas estáticas y dinámicas para predecir la dirección del salto, como en el PowerPC 601 y el Pentium 4.

### Ejecución superescalar

La ejecución superescalar involucra:
1. **Captación de instrucciones**: Incluye predicción de saltos para formar un flujo dinámico.
2. **Resolución de dependencias**: El procesador elimina dependencias artificiales.
3. **Ventana de ejecución**: Las instrucciones se estructuran según sus dependencias verdaderas y se ejecutan en paralelo según disponibilidad de recursos.
4. **Commit de instrucciones**: Los resultados se almacenan secuencialmente, asegurando la consistencia del programa.

### Implementación superescalar

El hardware requerido para la ejecución superescalar incluye:
- **Estrategias de captación de instrucciones**: Capturan múltiples instrucciones simultáneamente y predicen saltos.
- **Lógica de dependencias de registros**: Determina y comunica dependencias verdaderas.
- **Mecanismos de emisión paralela**: Inician múltiples instrucciones en paralelo.
- **Recursos de ejecución paralela**: Incluyen múltiples unidades funcionales segmentadas y jerarquías de memoria eficientes.
- **Mecanismos de commit**: Aseguran la actualización correcta del estado del procesador.