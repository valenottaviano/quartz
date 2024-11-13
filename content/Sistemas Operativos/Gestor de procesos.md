# Gestor de procesos

%%
Date:: [[2024-11-13]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

### 1. ¿Qué es el Gestor de Procesos?

El **Gestor de Procesos** es una de las principales funciones del sistema operativo encargada de manejar la creación, ejecución, suspensión y finalización de los procesos en un sistema. Un proceso es un programa en ejecución que utiliza recursos de la computadora, como el CPU, memoria y dispositivos de entrada/salida (E/S). El gestor de procesos asegura que los recursos del sistema se asignen de manera eficiente y que los procesos se ejecuten en un entorno controlado y protegido.

### 2. Funciones Principales del Gestor de Procesos

Las principales tareas del gestor de procesos incluyen:

- **Creación y Destrucción de Procesos**:
    - El sistema operativo puede crear nuevos procesos para ejecutar programas y tareas específicas solicitadas por el usuario o por el propio sistema.
    - También es responsable de finalizar procesos una vez que han completado su ejecución o cuando el sistema los termina debido a algún error.
- **Planificación de Procesos**:
    - La planificación de procesos es la tarea de asignar tiempo del CPU a cada proceso de manera ordenada y justa.
    - Existen algoritmos de planificación, como FIFO, SJF, Round Robin, y Prioridad, que determinan el orden en el que los procesos acceden al CPU.
- **Conmutación de Contexto**:
    - La conmutación de contexto es el cambio de un proceso a otro, guardando el estado actual del proceso en ejecución para poder reanudarlo después.
    - Permite al sistema operativo alternar entre procesos de manera rápida y eficiente, manteniendo la información de cada proceso en su **PCB** (Process Control Block o Bloque de Control de Proceso).
- **Sincronización y Comunicación entre Procesos (IPC)**:
    - Los procesos que se ejecutan de forma simultánea pueden necesitar comunicarse o sincronizarse para compartir datos de manera segura.
    - El gestor de procesos utiliza mecanismos como semáforos, monitores, y colas de mensajes para gestionar la sincronización y prevenir problemas como condiciones de carrera (race conditions).
- **Suspensión y Reanudación de Procesos**:
    - El sistema operativo puede suspender temporalmente un proceso para liberar recursos y reanudarlo más tarde.
    - La suspensión ocurre generalmente cuando un proceso está esperando un recurso o cuando el sistema necesita priorizar otros procesos.

### 3. Ciclo de Vida de un Proceso

Un proceso pasa por varios estados a lo largo de su ciclo de vida. Estos estados reflejan el momento en el que se encuentra el proceso en su ejecución y son gestionados por el sistema operativo. Los estados típicos de un proceso incluyen:

- **Nuevo**:
    - El proceso ha sido creado, pero aún no está listo para ejecutarse.
    - Se están asignando los recursos iniciales, como memoria y espacio en el PCB.
- **Listo**:
    - El proceso está preparado para ejecutarse y espera a que el CPU esté disponible.
    - Se encuentra en la cola de procesos listos, esperando su turno de ejecución.
- **Ejecución**:
    - El proceso está en ejecución activa en el CPU.
    - El sistema operativo asigna el CPU a este proceso para que avance en su tarea.
- **Bloqueado o Espera**:
    - El proceso está en pausa mientras espera un evento, como la finalización de una operación de E/S.
    - Una vez que el evento ocurre, el proceso pasa de nuevo al estado de listo.
- **Terminado**:
    - El proceso ha completado su ejecución y se liberan los recursos asignados.
    - Su PCB es eliminado, y el proceso deja de existir en el sistema.

### 4. Algoritmos de Planificación de Procesos

Para asignar tiempo de CPU a cada proceso, el gestor de procesos emplea algoritmos de planificación. Los algoritmos más comunes incluyen:

- **FIFO (First In, First Out)**:
    - Los procesos se ejecutan en el orden en que llegan. El primer proceso que llega es el primero en ser ejecutado.
    - **Ventaja**: Sencillo de implementar.
    - **Desventaja**: No es eficiente para sistemas que requieren respuestas rápidas, ya que puede haber procesos que esperen demasiado.
- **SJF (Shortest Job First)**:
    - Se elige el proceso con la menor duración estimada.
    - **Ventaja**: Minimiza el tiempo promedio de espera.
    - **Desventaja**: Puede llevar a la inanición de procesos largos si siempre hay procesos cortos en espera.
- **Round Robin**:
    - Cada proceso recibe un tiempo fijo de CPU (cuanto o quantum), y si no ha terminado, se reubica al final de la cola de listos.
    - **Ventaja**: Justo para todos los procesos; ideal para sistemas interactivos.
    - **Desventaja**: Puede generar una sobrecarga debido a la frecuente conmutación de contexto.
- **Prioridad**:
    - Cada proceso tiene una prioridad, y el sistema otorga el CPU al proceso con mayor prioridad.
    - **Ventaja**: Permite dar preferencia a procesos críticos.
    - **Desventaja**: Puede llevar a la inanición de procesos de baja prioridad.

### 5. Bloque de Control de Proceso (PCB)

El **PCB** es una estructura de datos clave en el gestor de procesos. Almacena toda la información necesaria sobre un proceso para que el sistema operativo pueda gestionarlo de manera efectiva. Los datos comunes que contiene el PCB incluyen:

- **ID del proceso**: Identificador único del proceso.
- **Estado del proceso**: El estado actual en el ciclo de vida del proceso (nuevo, listo, ejecución, bloqueado, terminado).
- **Contador de programa (PC)**: Dirección de la próxima instrucción a ejecutar para el proceso.
- **Registros de CPU**: Valores de los registros del CPU cuando el proceso está suspendido.
- **Información de memoria**: Ubicación en memoria y límites del espacio asignado al proceso.
- **Información de E/S**: Recursos de E/S asignados al proceso y estado de las operaciones de E/S en curso.
- **Información de contabilidad**: Estadísticas de uso del CPU, tiempo de ejecución y otros datos relevantes para la administración del proceso.

### 6. Sincronización y Comunicación entre Procesos

El gestor de procesos debe asegurar que los procesos puedan colaborar y comunicarse sin interferencias ni errores. Para ello, emplea mecanismos de **sincronización** y **comunicación entre procesos** (IPC):

- **Semáforos**: Son variables que permiten a los procesos coordinar el acceso a recursos compartidos y evitan conflictos en el acceso concurrente.
- **Monitores**: Son estructuras de programación que permiten realizar operaciones sobre datos compartidos de manera segura.
- **Colas de mensajes**: Permiten el intercambio de información entre procesos a través de mensajes, evitando la interferencia directa en la memoria compartida.
- **Señales**: Notificaciones enviadas a los procesos para indicarles que ha ocurrido un evento específico, como una interrupción de hardware o la disponibilidad de un recurso.

### 7. Ejemplos de Gestión de Procesos en Sistemas Operativos

- **Unix/Linux**:
    - Unix y Linux implementan un modelo de procesos robusto, permitiendo la creación de procesos mediante la llamada al sistema `fork`, que crea un nuevo proceso hijo idéntico al proceso padre.
    - Utilizan señales para la comunicación y sincronización, así como técnicas de planificación avanzada para gestionar eficientemente los recursos del sistema.
- **Windows**:
    - Windows gestiona los procesos y subprocesos de forma diferenciada, proporcionando una estructura para la multitarea.
    - Utiliza un modelo de planificación basado en prioridades y ofrece una amplia gama de servicios de IPC, incluyendo semáforos, mutexes y eventos.