# Planificación de Procesos de un CPU

%%
Date:: [[2024-10-25]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

La planificación de procesos es esencial para la distribución eficiente del tiempo del procesador entre los procesos en un sistema operativo. Este proceso permite determinar qué proceso en estado de "listo" se ejecutará a continuación, optimizando el rendimiento y el uso de recursos.

### Niveles de Planificación

1. **Planificación a corto plazo**: Selecciona el próximo proceso en estado "listo" para pasar a ejecución.
2. **Planificación a mediano plazo**: Decide qué procesos se suspenden y cuáles se reanudan según la carga del sistema.
3. **Planificación a largo plazo**: Añade nuevos procesos a la lista de espera para su entrada al sistema.

![[Pasted image 20241025203815.png]]

### Tipos de Planificación

1. **Sin expulsión**: El proceso retiene el CPU hasta que finaliza o entra en espera.
2. **Con expulsión**: El sistema operativo puede retirar el CPU a un proceso en ejecución, utilizando un reloj que interrumpe periódicamente el procesamiento.

![[Pasted image 20241025203835.png]]
![[Pasted image 20241025203902.png]]

### Algoritmos de Planificación

1. **Round-Robin**: Cada proceso recibe una "rodaja" de tiempo de CPU, y se encola de forma circular. Es equitativo y efectivo para sistemas interactivos.
2. **FIFO (First-In-First-Out)**: Los procesos se atienden en orden de llegada. Útil para sistemas por lotes, pero no adecuado para entornos interactivos.
3. **Prioridades**: Los procesos se seleccionan según su prioridad. Puede provocar inanición, que se evita con un mecanismo de envejecimiento para aumentar la prioridad de procesos que han esperado mucho.
4. **Trabajo más corto primero**: Favorece procesos con tiempos de ejecución cortos, mejorando el tiempo de respuesta pero desfavoreciendo tareas largas.
5. **Lotería**: Selecciona procesos de manera aleatoria, asignándoles turnos de ejecución según sorteos.

### Objetivos de la Planificación

- **Eficiencia**: Maximizar el uso del procesador.
- **Tiempo de respuesta**: Reducir el tiempo de espera para sistemas interactivos.
- **Productividad**: Aumentar el número de trabajos completados en un tiempo determinado.
- **Cumplimiento de plazos**: Especialmente relevante en sistemas de tiempo real.

### Temporizadores

El sistema operativo mantiene temporizadores que los procesos activan especificando un tiempo límite. Al vencer el temporizador, el proceso recibe una señal, lo que permite controlar su ejecución y liberar recursos en momentos determinados.

