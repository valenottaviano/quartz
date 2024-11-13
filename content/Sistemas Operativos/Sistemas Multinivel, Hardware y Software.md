# Sistemas Multinivel: Hardware y Software

%%
Date:: [[2024-11-13]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

### Introducción a los Sistemas Multinivel

Los sistemas multinivel ofrecen una organización jerárquica en la que tanto el hardware como el software están estructurados en diferentes niveles. Cada nivel proporciona una capa de abstracción que facilita el manejo de los recursos y la ejecución de programas, lo que permite la interacción eficiente entre el software de alto nivel y los circuitos de hardware en la base. Esta estructura modular y jerárquica es esencial para que los sistemas operativos gestionen procesos, memoria y recursos de manera eficiente.

### 1. Hardware, Software y Firmware

#### Hardware

- **Definición**: El hardware incluye todos los componentes físicos de la computadora, como los circuitos electrónicos, la memoria, los dispositivos de entrada/salida, y otros periféricos.
- **Función en un sistema multinivel**:
    - En la base de la jerarquía, el hardware ejecuta las instrucciones más simples y primitivas del sistema.
    - Los niveles superiores del sistema dependen de esta capa para realizar todas las operaciones físicas y lógicas.

#### Software

- **Definición**: El software abarca los algoritmos y programas que controlan el funcionamiento del hardware, permitiendo la ejecución de aplicaciones y el control de recursos del sistema.
- **Relación con el hardware**:
    - El software interactúa con el hardware a través de capas intermedias (firmware y sistema operativo), que actúan como mediadores.
    - El software de alto nivel (como aplicaciones y programas de usuario) se basa en esta jerarquía para comunicarse indirectamente con el hardware sin gestionar directamente sus complejidades.

#### Firmware

- **Definición**: El firmware es una forma intermedia entre el software y el hardware. Se trata de un software que se almacena permanentemente en el hardware, usualmente en chips de memoria no volátil.
- **Función**:
    - Sirve para controlar funciones específicas del hardware de forma más directa que el software.
    - Se encuentra en componentes como el BIOS de una computadora, que permite la inicialización del sistema y proporciona una interfaz básica de comunicación entre el hardware y el software.
    - **Ejemplos**: BIOS en computadoras, firmware en electrodomésticos y dispositivos que requieren retener programas incluso cuando se apaga el sistema.

### 2. Procesos y Estados

#### Definición de Proceso

- Un proceso es un programa en ejecución, considerado una entidad activa dentro de un sistema operativo.
- **Elementos del proceso**:
    - **Código del Programa**: El conjunto de instrucciones a ejecutarse.
    - **Estado del Proceso**: La información que permite al sistema operativo gestionar y reanudar la ejecución de un proceso en cualquier momento.
    - **Recursos Asociados**: Los recursos que el proceso utiliza durante su ejecución, como memoria y archivos.

#### Estados del Proceso

- **Definición de Estado**: Indica el momento en el que se encuentra el proceso en relación a su ejecución.
- **Tipos de estados**:
    - **Nuevo**: El proceso se ha creado pero aún no está listo para ejecutarse.
    - **Listo**: El proceso está preparado para ejecutarse, esperando asignación del CPU.
    - **Ejecución**: El proceso está activo y en ejecución.
    - **Espera**: El proceso está en pausa esperando un evento externo (como E/S).
    - **Terminado**: El proceso ha completado su ejecución.
- **Vector de Estado**: Un conjunto de variables y datos que representan la información de estado de un proceso. Incluye la siguiente instrucción a ejecutarse, los valores de todas las variables, y el estado de los dispositivos de E/S utilizados.

#### Evolución de un Proceso

- A medida que un proceso se ejecuta, pasa por diferentes estados.
- **Función del procesador**: Llevar al proceso de un estado al siguiente mediante cambios en el vector de estado.
- **Interpretes de proceso**: En algunos sistemas, el procesador que maneja el cambio de estado de un proceso puede ser otro proceso, funcionando como un intérprete para ese proceso.

### 3. Realización del Nivel de Máquina del Sistema Operativo

#### Instrucciones Ordinarias del Sistema Operativo

- **Descripción**: Son las instrucciones de nivel 3 (máquina del sistema operativo) que también están presentes en el nivel de máquina convencional (nivel 2).
- **Tipos de instrucciones**:
    - Incluyen operaciones simples como aritméticas, booleanas y de desplazamiento, que pueden ser gestionadas directamente por el microprograma o el hardware en niveles inferiores.

#### Instrucciones NIMSO (Nivel de Instrucción de Máquina del Sistema Operativo)

- **Definición**: Estas son las instrucciones de nivel 3 que no están presentes en el nivel 2.
- **Características**:
    - Son específicas del sistema operativo y requieren la intervención del SO para su ejecución.
    - Permiten al sistema operativo realizar tareas complejas como la gestión de memoria, el manejo de procesos y la administración de recursos de E/S.

#### Ejecución de Instrucciones en el Nivel del Sistema Operativo

1. **Instrucciones Ordinarias**:
    
    - Estas instrucciones son ejecutadas directamente por el hardware o el microprograma, sin intervención del sistema operativo.
    - Permiten la ejecución de operaciones comunes necesarias para el funcionamiento del programa de usuario.
2. **Instrucciones NIMSO**:
    
    - Cuando se encuentra una instrucción NIMSO, el microprograma detiene la ejecución del programa de usuario y pasa el control al sistema operativo.
    - El sistema operativo interpreta y ejecuta la instrucción NIMSO.
    - Una vez completada, el control vuelve al microprograma o al hardware para que continúe ejecutando las instrucciones del programa de usuario.
