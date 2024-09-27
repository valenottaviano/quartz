# Procesos en GNU Linux

%%
Date:: [[2024-09-27]]
Course:: [[Sistemas Operativos]]
Source:: [[Concepto de Proceso]]
%%


Un **proceso** en GNU/Linux es una instancia de un programa en ejecución, y es uno de los conceptos fundamentales del sistema operativo. Los procesos en Linux permiten que el sistema gestione múltiples tareas simultáneamente. Cada proceso tiene un identificador único (PID) y puede ejecutarse en primer plano o segundo plano.

### Identificadores de un proceso

Cada proceso en Linux está asociado con varios identificadores:

- **Process ID (PID)**: Identificador único de cada proceso.
- **User ID (UID)** y **Group ID (GID)**: Identificadores del usuario y grupo al que pertenece el proceso.
- **Parent Process ID (PPID)**: Identificador del proceso padre que creó el proceso.

El **UID y GID** pueden ser reales (heredados del proceso padre) o efectivos (el UID efectivo 0 representa el superusuario, con permisos elevados).

### Estado de los procesos

Los procesos en Linux pueden estar en diferentes estados, que describen su situación actual:

- **R**: Ejecutándose o en cola para ser ejecutado.
- **S**: Durmiendo (interrumpible), esperando un evento.
- **D**: Durmiendo de manera ininterrumpible, generalmente esperando I/O.
- **T**: Detenido, debido a una señal o a una acción de depuración.
- **Z**: Proceso zombi (ya ha terminado, pero su información aún no ha sido limpiada por el proceso padre).
- **X**: Proceso muerto (estado nunca visto en sistemas saludables).

Además, los procesos pueden tener indicadores adicionales como alta prioridad, baja prioridad, o multihilo.

### Creación de procesos

Un proceso puede crearse al iniciar una sesión o al ejecutar un programa. En Linux, el comando `fork()` permite crear nuevos procesos. El proceso creado hereda la mayoría de los atributos del proceso padre, pero recibe su propio PID.

### El proceso init

En sistemas Linux, el primer proceso que se ejecuta al arrancar el sistema es **init** (PID = 1), y todos los demás procesos son sus descendientes. El proceso init no puede ser terminado mientras el sistema esté en funcionamiento, y se encarga de gestionar otros procesos.

### Árbol de procesos

Los procesos en Linux tienen una estructura jerárquica que puede visualizarse como un árbol, donde cada proceso tiene un padre (excepto init). Para visualizar esta estructura se pueden usar comandos como `pstree`, que muestra los procesos activos en formato de árbol.

### Demonios (Daemons)

Los **demonios** son procesos que corren en segundo plano (background), proporcionando servicios al sistema sin interactuar directamente con el usuario. Ejemplos típicos de demonios incluyen servidores web o gestores de bases de datos. Estos procesos no requieren un terminal asociado (TTY).

### Señales

Las **señales** son mensajes que se envían a los procesos para notificar eventos o condiciones especiales. Las señales más comunes incluyen:

- **SIGTERM** (15): Solicitud de terminación de un proceso de forma segura.
- **SIGKILL** (9): Fuerza la terminación inmediata de un proceso.
- **SIGSTOP** y **SIGCONT**: Detienen o reanudan la ejecución de un proceso.

El comando `kill` se utiliza para enviar señales a procesos.

### Terminar procesos

Para **terminar un proceso**, se puede utilizar el comando `kill` seguido del PID del proceso. La señal predeterminada es **SIGTERM**, que intenta terminar el proceso de manera ordenada. Si el proceso no responde, se puede usar **SIGKILL** para forzar su finalización.

### Multiprogramación y tiempo compartido

Linux implementa **multiprogramación**, permitiendo que varios procesos se ejecuten de manera simultánea compartiendo los recursos del sistema (como CPU y memoria). En general, hay más procesos que CPUs disponibles, por lo que el sistema operativo debe decidir cómo repartir el tiempo de CPU entre los procesos en cola, utilizando algoritmos de planificación basados en prioridades y tiempos asignados.

### Prioridad de ejecución

Los procesos en Linux tienen una **prioridad** que determina cuánto tiempo de CPU se les asigna. Esta prioridad está representada por el valor **NI** (nice), que va de -20 (mayor prioridad) a 19 (menor prioridad). Los usuarios pueden ajustar la prioridad de un proceso utilizando los comandos `nice` y `renice`.

### Procesos en segundo plano

Los procesos pueden ejecutarse en **segundo plano** (background) usando el símbolo **&** al final de un comando. Esto permite que el terminal siga disponible para otros comandos mientras el proceso continúa ejecutándose en segundo plano. Para gestionar procesos en segundo plano, se pueden usar comandos como `jobs`, `bg`, y `fg`.

### Herramientas para gestionar procesos

Linux proporciona diversas herramientas para **listar, gestionar y medir** procesos:

- **ps**: Muestra los procesos en ejecución.
- **top/htop**: Proveen una visión en tiempo real del uso de recursos por los procesos.
- **pgrep**: Busca procesos por nombre.
- **killall/pkill**: Envía señales a múltiples procesos a la vez.
- **nohup**: Permite que un proceso continúe ejecutándose incluso después de cerrar la sesión.

Además, el sistema de archivos virtual **/proc** expone la información de los procesos en una estructura jerárquica de archivos, permitiendo obtener datos detallados sobre los procesos activos en el sistema.