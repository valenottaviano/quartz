# Gestión de Memoria

%%
Date:: [[2024-11-01]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

https://seo.unsta.edu.ar/pluginfile.php/331780/mod_resource/content/1/Unidad%20III%20-%20Administraci%C3%B3n%20de%20memoria%20y%20procesos.pdf

La **gestión de memoria** es un componente esencial en los sistemas operativos, responsable de asignar y administrar la memoria principal para los procesos en ejecución. Sus principales objetivos incluyen la creación de espacios de memoria lógicos independientes, la protección entre procesos, la compartición de memoria y el soporte para diversas regiones del proceso.

#### 1. Objetivos del Sistema de Gestión de Memoria

- **Espacios lógicos independientes**: Cada proceso opera en su propio espacio de memoria lógico, sin conocer las posiciones de memoria física que ocupa, lo que permite una independencia y evita conflictos.
- **Protección entre procesos**: En sistemas multiprogramados, la gestión de memoria debe evitar que un proceso interfiera con otros. Esto se logra mediante traducción de direcciones y validación en tiempo de ejecución.
- **Compartición de Memoria**: Algunos sistemas permiten que múltiples procesos compartan ciertas áreas de memoria, facilitando la comunicación entre ellos.
- **Soporte para regiones del proceso**: Los procesos suelen dividir su mapa de memoria en regiones como código, datos y pila, que necesitan características específicas de protección y tamaño.
- **Maximizar el grado de multiprogramación**: El sistema busca optimizar el uso de la memoria permitiendo que se ejecuten múltiples procesos al mismo tiempo.
- **Mapas de memoria de tamaño adecuado**: Con aplicaciones cada vez más demandantes, es crucial que el sistema ofrezca soporte para grandes espacios de memoria a través de técnicas como la memoria virtual.

#### 2. Modelos de Memoria de un Proceso

El modelo de memoria de un proceso se organiza en diferentes regiones, cada una destinada a almacenar tipos específicos de datos:

- **Código**: Contiene el código del programa, suele ser compartida y de solo lectura.
- **Datos con valor inicial**: Almacena variables globales inicializadas y es privada con acceso de lectura/escritura.
- **Datos sin valor inicial**: Almacena variables globales no inicializadas, se marca como sin soporte y suele llenarse con ceros.
- **Pila**: Privada, con acceso de lectura/escritura y tamaño variable.
- **Heap**: Zona de memoria dinámica que crece hacia direcciones más altas, privada y variable en tamaño.

#### 3. Esquemas de Asignación de Memoria

La gestión de la memoria se realiza mediante distintos esquemas:

- **Asignación contigua**: Cada proceso ocupa una zona contigua en la memoria física, y se gestiona mediante registros valla que delimitan la zona asignada. Sin embargo, esta técnica es propensa a la fragmentación externa.
- **Memoria virtual**: Este sistema permite que cada proceso disponga de un espacio lógico mayor que la memoria física, trasladando y trayendo de vuelta fragmentos necesarios entre memoria principal y secundaria (disco). Los dos métodos principales para implementar la memoria virtual son:
    - **Paginación**: Divide la memoria en páginas de tamaño fijo que se asignan a marcos de la memoria física.
    - **Segmentación**: Usa segmentos de diferentes tamaños para reflejar mejor la estructura del programa, aunque esto genera fragmentación externa.

#### 4. Políticas de Asignación y Reemplazo

Para gestionar eficazmente la memoria, se emplean políticas de asignación y reemplazo:

- **Asignación fija y dinámica de marcos**: Define cuántos marcos se asignan a cada proceso.
- **Reemplazo de páginas**: Incluye algoritmos como FIFO, LRU y el algoritmo de reloj, que ayudan a decidir qué página expulsar cuando la memoria está llena.

#### 5. Hiperpaginación

Cuando la tasa de fallos de página es demasiado alta, se produce la hiperpaginación, situación que reduce el rendimiento del sistema. Para evitarla, se controla la carga de trabajo y se ajusta el número de procesos en ejecución.

