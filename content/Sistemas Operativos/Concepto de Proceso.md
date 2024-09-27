# Concepto de Proceso

%%
Date:: [[2024-09-27]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

Un **proceso** es un programa en ejecución, gestionado por el sistema operativo (SO). No se debe confundir con un programa, que es una entidad pasiva. Un proceso es una entidad activa y puede estar en diversos estados. El SO se encarga de mantener una serie de estructuras de información para cada proceso, permitiendo identificar sus características y los recursos que tiene asignados. Estas estructuras incluyen:

- **Imagen de memoria (core image)**: Incluye tanto el código como los datos del proceso.
- **Estado del procesador**: Comprende los registros generales, el contador de programa (PC), el puntero de pila (SP) y otros registros especiales.
- **Bloque de Control del Proceso (BCP)**: Contiene información como el estado del proceso, los recursos asignados, el mapa de memoria, las tablas de E/S y archivos.

![[Pasted image 20240927201620.png]]

### Multitarea

La **multitarea** es la capacidad del sistema para gestionar la ejecución de múltiples procesos de manera simultánea o en alternancia. Se basa en tres características principales:

1. **Paralelismo real** entre las operaciones de E/S y el procesador.
2. **Alternancia** en las fases de E/S y procesamiento de los procesos.
3. **Capacidad de la memoria** principal para almacenar múltiples procesos.


El proceso alterna entre las fases de procesamiento y E/S, lo que optimiza el uso del CPU.
![[Pasted image 20240927201701.png]]
Las ventajas de la multitarea incluyen:

- Modularidad en la programación, facilitando la división de aplicaciones en varios procesos.
- Mayor eficiencia en el servicio, permitiendo la interacción y ejecución simultánea de varios usuarios.
- Aprovechamiento de los tiempos muertos mientras los procesos esperan la finalización de operaciones de E/S.
- Aumento del uso del CPU, reduciendo el tiempo en que este permanece ocioso.

![[Pasted image 20240927201715.png]]
![[Pasted image 20240927201753.png]]


### Información de un proceso

La **información** relacionada con un proceso está distribuida en varias estructuras clave:

- **Estado del procesador**: Incluye el contenido de todos sus registros. Cuando un proceso está en ejecución, su estado reside en los registros del procesador; cuando está inactivo, el estado se guarda en el BCP.
- **Imagen de memoria del proceso**: Consta de las áreas de memoria que el proceso está autorizado a utilizar. Puede referirse tanto a memoria física como virtual, y generalmente requiere asignación dinámica de memoria.
- **Bloque de Control del Proceso (BCP)**: Incluye información de identificación (PID, ID del proceso padre), estado del procesador, control del proceso (evento, prioridad, estado), descripción de los segmentos de memoria asignados y recursos asignados (ficheros, puertos, etc.).

![[Pasted image 20240927201818.png]]

El SO gestiona las tablas que contienen información sobre los procesos, la memoria, E/S y archivos abiertos.

### Formación de un proceso

La **formación de un proceso** consiste en completar toda la información que lo constituye. Para crear un proceso, el SO realiza los siguientes pasos:

1. **Asignación de espacio de memoria** para la imagen del proceso.
2. **Selección de un BCP libre** de la tabla de procesos.
3. **Rellenar el BCP** con la información necesaria, como el estado del proceso, los segmentos de memoria y los recursos asignados.
4. **Cargar los segmentos** de código y datos en la memoria.
5. **Crear la pila inicial**, que incluye el entorno del proceso y los parámetros que se pasan en la invocación.

### Estados del proceso

![[Pasted image 20240927201920.png]]

Los **estados básicos de un proceso** son:

1. **Ejecución**: El proceso está siendo ejecutado activamente por la CPU.
2. **Bloqueado**: El proceso está esperando que ocurra un evento (como la finalización de una operación de E/S) para continuar.
3. **Listo**: El proceso está listo para ejecutarse cuando el SO lo seleccione.

Otros estados adicionales pueden ser:

- **Nuevo**: El proceso se ha creado pero aún no ha sido cargado en memoria.
- **Suspendido**: El proceso ha sido temporalmente removido de la memoria principal.
- **Saliente**: El proceso ha finalizado su ejecución y está en proceso de ser terminado.

Cuando ocurre una interrupción, el SO realiza un **cambio de contexto**, que implica guardar el estado del procesador en el BCP y ejecutar la rutina de manejo de interrupciones. Este cambio es gestionado por el planificador y el activador del sistema operativo.

### Procesos ligeros

Un **proceso ligero** o **hilo** es una unidad de ejecución que comparte recursos con otros hilos del mismo proceso, como el espacio de memoria y archivos abiertos. Desde el punto de vista de programación, un hilo es una función que se puede ejecutar en paralelo con otras. El hilo principal de un proceso suele ser la función `main`.

Cada hilo tiene su propio:

- **Contador de programa**.
- **Pila**.
- **Registros**.
- **Estado**: puede estar ejecutando, listo o bloqueado.

Los hilos permiten ejecutar múltiples tareas en paralelo, optimizando el uso del CPU, especialmente en sistemas multiprocesadores o con múltiples núcleos.

### Planificación

La **planificación** es el proceso por el cual el sistema operativo asigna tiempo de CPU a los procesos listos para ejecutarse. Existen tres tipos principales de planificación:

1. **A corto plazo**: Selecciona qué proceso pasa de estado listo a ejecución.
2. **A mediano plazo**: Gestiona los procesos suspendidos y los que vuelven al estado activo.
3. **A largo plazo**: Añade nuevos procesos a la lista de espera del sistema.

Los **algoritmos de planificación** pueden ser:

- **Round-robin (cíclico)**: Reparte equitativamente el tiempo de CPU entre los procesos mediante rodajas de tiempo.
- **FIFO**: Ejecuta los procesos en el orden en que llegan al estado listo, sin preempción.
- **Por prioridades**: Ejecuta los procesos con mayor prioridad, lo que puede llevar a problemas de inanición, evitados mediante mecanismos de envejecimiento.

### Temporizadores

El **temporizador** es un mecanismo que el SO utiliza para controlar el tiempo de ejecución de los procesos. Cada proceso tiene un temporizador asociado en su BCP. Los procesos pueden activar un temporizador especificando un tiempo en segundos o milisegundos. Una vez que el tiempo se agota, el proceso recibe una señal o se ejecuta una rutina asociada, lo que permite gestionar eventos temporales y la cadencia en la ejecución de procesos.