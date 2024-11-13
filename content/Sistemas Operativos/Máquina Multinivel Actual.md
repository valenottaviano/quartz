# Máquina Multinivel Actual

%%
Date:: [[2024-11-13]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%


### Introducción a la Máquina Multinivel

La arquitectura multinivel de una computadora se basa en una serie de niveles o capas jerárquicas de abstracción. Cada nivel interpreta o ejecuta las instrucciones de un nivel inferior, proporcionando una estructura más manejable para el procesamiento de información. La organización en niveles permite que los sistemas sean más modulares, facilitando la programación y el manejo de recursos.

### 1. Niveles de Lógica Digital
- **Nivel 0: Hardware de la Máquina**  
    Este es el nivel más bajo de la arquitectura de una computadora y corresponde al hardware propiamente dicho, compuesto por circuitos lógicos, compuertas digitales, circuitos aritméticos, memorias, buses y relojes.
- **Características principales**:
    - No existe el concepto de programa en este nivel, sino que se manejan señales eléctricas que representan instrucciones primitivas.
    - La interacción a este nivel es directa, y todo debe ser gestionado mediante señales básicas.

### 2. Nivel de Microprogramación
- **Nivel 1: Verdadero Lenguaje de Máquina**  
    Este nivel corresponde al "microcódigo" o "microprograma", que es una serie de instrucciones internas que interpretan las instrucciones del nivel de máquina (nivel 2).
- **Microprograma**:
    - En este nivel se implementa el verdadero lenguaje de máquina que la CPU puede interpretar.
    - Este microprograma traduce instrucciones a operaciones de bajo nivel en el hardware y gestiona tareas como el movimiento de datos y la ejecución de instrucciones.
    - No todas las máquinas tienen un nivel de microprogramación; en algunas, el hardware ejecuta directamente las instrucciones de nivel de máquina.

### 3. Máquina Convencional
- **Nivel 2: Nivel de Instrucción de Máquina**  
    Este nivel se conoce como el nivel de la "máquina convencional". A través de este nivel, los programadores pueden escribir instrucciones en el lenguaje de máquina del fabricante, que luego serán interpretadas o ejecutadas directamente por el microprograma (nivel 1) o, en algunos casos, por el hardware.
- **Manual de Referencia del Lenguaje de Máquina**:
    - Los fabricantes suelen proporcionar un manual para el lenguaje de máquina específico de cada computadora, que detalla las instrucciones que el hardware puede ejecutar.
    - La mayoría de los sistemas modernos aún mantienen un conjunto de instrucciones de nivel de máquina en este nivel, ejecutadas por el hardware o microprograma.

### 4. Máquina del Sistema Operativo
- **Nivel 3: Instrucciones del Sistema Operativo**  
    En este nivel, el sistema operativo proporciona nuevas instrucciones y funcionalidades adicionales a las del nivel de máquina (nivel 2).
- **Nuevas capacidades**:
    - El sistema operativo introduce capacidades adicionales, como la ejecución de múltiples programas en paralelo y una organización avanzada de la memoria.
    - Algunas instrucciones en este nivel son interpretadas directamente por el sistema operativo y permiten el manejo de procesos, memoria y dispositivos.
    - **Instrucciones Híbridas**: Ciertas instrucciones en este nivel pueden ejecutarse de dos maneras: si son idénticas a las del nivel 2, las ejecuta el microprograma; de lo contrario, son gestionadas por el sistema operativo.

### 5. Lenguaje Ensamblador
- **Nivel 4: Lenguaje Ensamblador y Abstracción**  
    Este nivel de abstracción permite a los programadores trabajar con un lenguaje más cercano al lenguaje humano. A diferencia de los niveles anteriores, el lenguaje ensamblador utiliza abreviaturas y palabras clave que facilitan su interpretación y escritura.
- **Características del Nivel 4**:
    - El ensamblador permite que el código se compile a instrucciones de nivel inferior.
    - Este nivel introduce palabras clave y abreviaturas significativas para los humanos, lo que hace que el código sea más fácil de escribir y comprender.
    - Los niveles de hardware ejecutan los intérpretes y compiladores que traducen este nivel a instrucciones de máquina.

