# Modelo de Estados en Procesos

%% 
Date:: [[2024-09-06]] 
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%
## Modelo de Procesos de Cinco Estados

El modelo de estados de procesos es fundamental para entender cómo un sistema operativo gestiona los diferentes estados por los que atraviesa un proceso desde su creación hasta su finalización. Estos estados permiten que el sistema operativo coordine el uso de los recursos de manera eficiente.

### Estados:

1. **Ejecución**:  
    El proceso está utilizando la CPU y está siendo ejecutado. Este es el único estado en el que el proceso realmente está realizando instrucciones.
    - **Ejemplo**: Cuando abres un programa, el proceso que lo representa está en ejecución mientras la CPU está procesando sus instrucciones.
2. **Listo**:  
    El proceso está preparado para ejecutarse, pero no está siendo ejecutado en este momento porque otro proceso está utilizando la CPU.
    - **Ejemplo**: Varias aplicaciones abiertas pueden estar listas para ser ejecutadas, pero la CPU solo ejecuta una a la vez. Las demás esperan su turno en este estado.
3. **Bloqueado**:  
    El proceso no puede continuar hasta que ocurra un evento externo o se libere un recurso que está esperando.
    - **Ejemplo**: Un proceso que está esperando una entrada del usuario (como la lectura de un archivo) estará en estado bloqueado hasta que esa entrada esté disponible.
4. **Nuevo**:  
    El proceso acaba de ser creado, pero aún no ha sido aceptado por el sistema operativo. En este estado, se están configurando sus atributos iniciales antes de que sea puesto en la cola de procesos listos.
    - **Ejemplo**: Al iniciar una aplicación, el proceso primero pasa por el estado "Nuevo" mientras se preparan sus estructuras de datos en el sistema.
5. **Terminado**:  
    El proceso ha completado su ejecución y ya no necesita la CPU. El sistema operativo libera los recursos asociados a este proceso.
    - **Ejemplo**: Cuando cierras una aplicación, el proceso asociado pasa al estado "Terminado" una vez que ha liberado todos sus recursos.

![[Pasted image 20240906201516.png]]

### Transiciones de Estados

Las transiciones entre estos estados son las que permiten al sistema operativo manejar los procesos de manera eficiente. Cada cambio de estado ocurre por una razón específica:

1. **Nulo → Nuevo**:  
    Se crea un proceso cuando el usuario o el sistema solicita la ejecución de un programa.
    - **Ejemplo**: Al iniciar un programa, el sistema operativo crea un proceso desde un estado "nulo", asignándole identificadores y recursos iniciales.
2. **Nuevo → Listo**:  
    El proceso pasa al estado listo cuando el sistema operativo ha terminado de configurarlo y lo pone en la cola para ser ejecutado.
    - **Ejemplo**: Después de crear el proceso de un programa, este pasa al estado listo para ser ejecutado cuando la CPU esté disponible.
3. **Listo → Ejecución**:  
    El sistema operativo selecciona el siguiente proceso listo en la cola de ejecución y le asigna la CPU.
    - **Ejemplo**: El planificador de procesos decide cuál de los procesos listos será ejecutado a continuación, basándose en la política de planificación (e.g., por prioridades, por turnos).
4. **Ejecución → Terminado**:  
    El proceso termina de ejecutarse cuando completa su tarea o cuando es interrumpido por el sistema operativo.
    - **Ejemplo**: Un programa de cálculo termina y libera todos los recursos que estaba utilizando.
5. **Ejecución → Listo**:  
    Un proceso puede pasar de ejecución a listo si ha consumido su tiempo de ejecución permitido (por ejemplo, en un sistema basado en tiempo compartido) o si necesita ceder la CPU.
    - **Ejemplo**: En sistemas donde el tiempo de CPU está compartido, un proceso puede ser temporalmente suspendido para dar lugar a otro proceso.
6. **Ejecución → Bloqueado**:  
    Un proceso pasa a estado bloqueado si necesita esperar por algún evento o recurso externo, como una operación de entrada/salida.
    - **Ejemplo**: Si un proceso solicita leer un archivo desde el disco, entrará en estado bloqueado mientras espera que la operación se complete.
7. **Bloqueado → Listo**:  
    Una vez que el evento por el que el proceso estaba esperando ha ocurrido (por ejemplo, la finalización de una operación de E/S), el proceso pasa nuevamente a estado listo.
    - **Ejemplo**: Cuando el archivo ha sido leído, el proceso bloqueado puede volver a estar listo para ejecución.

### Procesos Suspendidos

Los procesos suspendidos son aquellos que, por alguna razón, han sido movidos de la memoria principal a la memoria secundaria (generalmente el disco) para liberar espacio en la memoria principal. Aunque no pueden ser ejecutados de inmediato, permanecen en estado suspendido hasta que sean reactivados.

![[Pasted image 20240906202157.png]]

1. **Listo**:  
    El proceso está en memoria principal y listo para ser ejecutado por la CPU.
    - **Ejemplo**: Un proceso que ha sido cargado y está a la espera de ser seleccionado por el planificador.
2. **Bloqueado**:  
    El proceso está en memoria principal, pero está esperando un recurso o evento externo para continuar.
    - **Ejemplo**: Un proceso que está esperando a que termine una operación de E/S.
3. **Bloqueado y Suspendido**:  
    El proceso está en la memoria secundaria (como el disco) y está esperando que ocurra un evento. Este estado permite que el sistema libere memoria principal.
    - **Ejemplo**: Un proceso esperando la entrada de un usuario podría ser suspendido para liberar espacio en la memoria mientras no se produce el evento esperado.
4. **Listo y Suspendido**:  
    El proceso está en la memoria secundaria, pero puede ser ejecutado cuando vuelva a ser cargado en la memoria principal.
    - **Ejemplo**: Un proceso suspendido puede ser reactivado cuando haya suficiente memoria disponible.

#### Proceso con una Sola Cola de Bloqueados

![[Pasted image 20240906202802.png]]

#### Proceso con Varias Colas de Bloqueados

![[Pasted image 20240906202840.png]]

### Características de un Proceso Suspendido

- Un proceso suspendido **no está disponible** para ser ejecutado inmediatamente.
- Puede estar en estado bloqueado, esperando un evento, **independientemente** de su estado de suspensión.
- Un proceso puede ser suspendido por diferentes agentes: el mismo proceso, el sistema operativo o el proceso padre, para evitar su ejecución.
- **No puede salir** del estado suspendido hasta que el agente que lo suspendió lo ordene explícitamente.

### Funciones del Sistema Operativo en la Gestión de Procesos

El sistema operativo desempeña un papel crucial en la gestión de los procesos, asegurando que cada uno obtenga los recursos que necesita y que el sistema funcione de manera eficiente.

![[Pasted image 20240906203313.png]]

1. **Planificación y Expulsión de Procesos**:  
    El sistema operativo decide qué procesos se ejecutan y cuándo, además de cuándo debe interrumpir un proceso para dar lugar a otro.
    - **Ejemplo**: En un sistema de tiempo compartido, el sistema operativo alterna entre los procesos para asegurarse de que todos reciban tiempo de CPU.
2. **Asignación de Recursos**:  
    El sistema operativo distribuye los recursos disponibles (como CPU, memoria y dispositivos de E/S) entre los procesos que los solicitan.
    - **Ejemplo**: Cuando un proceso necesita más memoria, el sistema operativo le asigna bloques de la memoria principal si están disponibles.
3. **Respuesta a Solicitudes de Servicios**:  
    Los procesos suelen realizar solicitudes al sistema operativo para realizar tareas como leer archivos o utilizar dispositivos de red.
    - **Ejemplo**: Un proceso que necesita leer datos de un archivo hace una solicitud al sistema operativo para acceder al sistema de archivos.
4. **Administración de Recursos**:  
    El sistema operativo controla y gestiona el uso de los recursos del sistema por parte de los procesos, evitando conflictos o uso ineficiente.
    - **Ejemplo**: Si dos procesos intentan acceder al mismo archivo simultáneamente, el sistema operativo maneja la concurrencia para evitar problemas.

### Estructura de Control del Sistema Operativo

El sistema operativo utiliza varias estructuras de control para gestionar eficientemente la memoria, los dispositivos y los procesos.

![[Pasted image 20240906203451.png]]

1. **Tablas de Memoria**:  
    Mantienen un registro del uso de la memoria principal y secundaria.
    - **Función**: Ayudan a asignar y proteger los bloques de memoria utilizados por los procesos.
2. **Tablas de Entrada/Salida (E/S)**:  
    Gestionan los dispositivos de entrada/salida y controlan su estado.
    - **Función**: Permiten al sistema operativo administrar las operaciones de E/S de los dispositivos.
3. **Tabla de Archivos**:  
    Contienen información sobre los archivos, como su ubicación, estado y permisos.
    - **Función**: Facilitan el acceso controlado a los archivos por los procesos.
4. **Tabla de Procesos**:  
    Almacenan la información necesaria para gestionar los procesos en ejecución y los que están en espera.
    - **Función**: Permiten al sistema operativo planificar, supervisar y coordinar la ejecución de los procesos.