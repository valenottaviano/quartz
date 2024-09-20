# Introducción a Compiladores y Trasladores

%%
Date:: [[2024-08-12]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%

## Definición de Compilador

Un **compilador** es un programa especializado que traduce un programa escrito en un **lenguaje de programación de alto nivel** (lenguaje fuente) a un **lenguaje de bajo nivel**, generalmente **código máquina** o **código intermedio**, que puede ser ejecutado directamente por una computadora. Los compiladores son fundamentales en el desarrollo de software, ya que permiten que los lenguajes de programación sean utilizados para escribir código en una forma comprensible para los humanos, mientras que la computadora recibe instrucciones específicas y detalladas en un formato que puede ejecutar.

Los lenguajes de alto nivel incluyen lenguajes como **C**, **Java**, **Python**, entre otros, mientras que el código de bajo nivel está más cercano a las instrucciones específicas que el procesador puede entender, como **ensamblador** o **código binario**.

## Función de un Traductor

Un **traductor** es cualquier programa que toma como entrada un texto en un lenguaje fuente y genera como salida otro texto en un lenguaje destino. Este término engloba tanto a los **compiladores** como a los **intérpretes**.

- **Compilador**: Traduce todo el código fuente a código máquina o intermedio antes de ser ejecutado. La traducción se realiza de una vez y luego se puede ejecutar repetidamente.
- **Intérprete**: Traduce y ejecuta el código línea por línea, de manera que la traducción y ejecución ocurren simultáneamente. Los intérpretes son comunes en lenguajes como Python y JavaScript.

## Proceso de Compilación

El proceso de compilación es complejo y se realiza en varias etapas. Cada una de estas etapas realiza una tarea específica que, al completarse, transforma el código fuente en un programa ejecutable o en código intermedio. Las etapas principales de un compilador son:

1. **Análisis Léxico (Lexical Analysis)**:
    - Esta etapa transforma el código fuente en una secuencia de **tokens**. Un token es una unidad básica del código, como una palabra clave, un identificador, un operador o un literal. El análisis léxico ayuda a simplificar el texto en componentes manejables que el compilador puede procesar.
2. **Análisis Sintáctico (Parsing)**:
    - En esta etapa, los tokens se organizan en una estructura llamada **árbol sintáctico** (o árbol de derivación), que sigue las reglas de la gramática del lenguaje fuente. Esta estructura representa la manera en que los componentes del código fuente se relacionan entre sí según la sintaxis del lenguaje.
3. **Análisis Semántico (Semantic Analysis)**:
    - En el análisis semántico, se verifica que el programa sea correcto desde el punto de vista lógico y que los tipos de datos sean consistentes. Por ejemplo, se chequea que las variables sean utilizadas correctamente según su tipo.
4. **Generación de Código Intermedio**:
    - El código fuente es transformado en una representación intermedia que es más fácil de manipular que el código fuente original, pero aún no está en el formato final de ejecución. Un ejemplo de código intermedio es el llamado **código de tres direcciones**, que divide el programa en instrucciones simples que son más fáciles de optimizar.
5. **Optimización de Código**:
    - Esta fase mejora el rendimiento del programa eliminando redundancias, reduciendo el consumo de recursos, y reorganizando el código de manera más eficiente. La optimización puede realizarse a nivel del código intermedio o directamente en el código máquina.
6. **Generación de Código Máquina**:
    - En la última etapa, el compilador traduce el código intermedio a código máquina, el cual puede ser ejecutado directamente por el procesador de la computadora. Este código es específico para la arquitectura del hardware en el que el programa va a ser ejecutado.

## Diferencias entre Compiladores e Intérpretes

Si bien tanto los compiladores como los intérpretes se utilizan para traducir código de un lenguaje de alto nivel a uno que la máquina pueda entender, hay algunas diferencias clave:

- **Compiladores**:
    - Traduce todo el código antes de ejecutar.
    - La ejecución es más rápida ya que el código ya ha sido traducido.
    - El proceso de desarrollo puede ser más lento porque el programa completo debe ser recompilado cada vez que se hace un cambio.
- **Intérpretes**:
    - Traduce el código y lo ejecuta línea por línea.
    - Es más interactivo y permite probar el código rápidamente sin necesidad de recompilarlo.
    - La ejecución suele ser más lenta, ya que la traducción ocurre en tiempo real.

## Etapas de un Compilador

- **Preprocesador**: Se encarga de incluir archivos, expandir macros y eliminar comentarios.
- **Analizador Léxico**: Convierte el código en tokens.
- **Analizador Sintáctico**: Organiza los tokens en una estructura jerárquica.
- **Generador de Código**: Produce el código intermedio o código máquina.
- **Optimizador**: Mejora el rendimiento del código generado.
- **Enlazador (Linker)**: Junta diferentes módulos de código en un archivo ejecutable completo.



![[Tipos de Compiladores]]


![[Estructura de un compilador]]


![[Estructuras de datos empleadas en un compilador]]