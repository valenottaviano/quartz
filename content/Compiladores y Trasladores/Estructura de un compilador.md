# Estructura de un compilador

%%
Date:: [[2024-09-02]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%

Un compilador es un programa que traduce código fuente escrito en un lenguaje de programación de alto nivel a un lenguaje de bajo nivel, como el código máquina. La estructura de un compilador se divide típicamente en dos fases principales: la fase de análisis y la fase de síntesis.

![[Pasted image 20240909172034.png]]
### Fase de Análisis

Esta fase se encarga de descomponer y entender el código fuente. Se subdivide en las siguientes etapas:

1. **Analizador Léxico**:
    - Esta es la primera etapa del proceso de compilación. El analizador léxico toma el código fuente y lo divide en tokens, que son las unidades básicas del lenguaje, como palabras clave, operadores y delimitadores.
    - **Propósito**: Ayuda a identificar los componentes básicos del código y a eliminar cualquier espacio en blanco, comentarios o caracteres innecesarios.
2. **Analizador Sintáctico**:
    - Una vez que se tienen los tokens, el analizador sintáctico organiza estos tokens en una estructura jerárquica llamada árbol sintáctico o árbol de derivación.
    - **Propósito**: Determina cómo se estructuran las construcciones del lenguaje, asegurándose de que la secuencia de tokens siga las reglas gramaticales del lenguaje de programación.
	- [[Backus-Naur Form]]
	- [[Syntax Diagrams]]
3. **Analizador Semántico**:
    - El analizador semántico revisa el árbol sintáctico para asegurarse de que las construcciones del código tengan sentido dentro del contexto del lenguaje. Esto incluye verificar que las variables estén declaradas antes de ser utilizadas, que los tipos de datos sean consistentes y que las operaciones realizadas sean válidas.
    - **Propósito**: Asegura que el código no solo esté estructurado correctamente, sino que también tenga un significado lógico y correcto dentro del contexto del programa. Por ejemplo, valida el flujo de ejecución y la lógica subyacente.
    - [[Esquemas de traducción de un compilador]]
    - [[Esquemas canónicos de un compilador]]
4. **Analizador Pragmático**:
    - Esta etapa, menos comúnmente mencionada, considera el contexto de uso del código y cómo interactúa con su entorno de ejecución. El analizador pragmático se enfoca en cómo el código se comportará cuando sea ejecutado, teniendo en cuenta aspectos como la integración con otros sistemas o la interacción con el usuario.
    - **Propósito**: Detecta y maneja situaciones que podrían causar errores en tiempo de ejecución, como el acceso a recursos inexistentes o condiciones no anticipadas durante la ejecución del programa.

### Fase de Síntesis

Una vez que el código fuente ha sido completamente analizado y validado, el compilador procede a la fase de síntesis, que consiste en generar el código final que será ejecutado por la máquina.

1. **Optimización**:
    - En esta etapa, el compilador mejora la eficiencia del código generado sin alterar su funcionalidad. Esto puede incluir la eliminación de código redundante, la simplificación de expresiones o la reorganización de instrucciones para un mejor rendimiento.
    - **Propósito**: Producir un código más rápido y eficiente, minimizando el uso de recursos.
2. **Generación de Código**:
    - Finalmente, el compilador traduce el código intermedio optimizado a código máquina específico para la arquitectura del procesador en la que se ejecutará el programa.
    - **Propósito**: Convertir el código fuente en un formato que pueda ser ejecutado directamente por la máquina.


## Tabla de símbolos

La **tabla de símbolos** es una estructura de datos clave en el proceso de compilación, utilizada durante la fase de análisis léxico, sintáctico y semántico del compilador. Su propósito principal es almacenar y gestionar información sobre los identificadores utilizados en el programa fuente, como variables, funciones, constantes, entre otros. Cada entrada en la tabla de símbolos contiene un identificador y una serie de atributos asociados a él, tales como:

- **Nombre del identificador:** El nombre exacto que aparece en el código fuente.
- **Tipo de dato:** El tipo de variable o función, como `int`, `float`, `char`, etc.
- **Ámbito (scope):** Indica en qué parte del programa es válido el identificador, como una función o un bloque específico.
- **Dirección de memoria:** La ubicación en la memoria donde se almacenan los valores de las variables.
- **Valor:** El valor asignado a las constantes o el valor actual de las variables.
- **Número de parámetros:** Si el identificador es una función, almacena la cantidad de parámetros que recibe.

La tabla de símbolos se actualiza continuamente a lo largo del proceso de compilación. A medida que el compilador va reconociendo nuevos identificadores, los va añadiendo a la tabla con la información correspondiente. Además, se consulta cada vez que es necesario verificar el uso de un identificador en diferentes contextos (como la llamada a funciones o el uso de variables).

### Gestor de errores

El **gestor de errores** es una parte fundamental del compilador que se encarga de detectar y manejar los errores que ocurren durante el proceso de compilación. Los errores pueden ser de diferentes tipos:

1. **Errores léxicos:** Son errores que ocurren cuando el compilador no puede reconocer una secuencia de caracteres como un componente válido del lenguaje. Por ejemplo, si se utiliza un símbolo no permitido o una palabra clave incorrecta.
2. **Errores sintácticos:** Estos errores suceden cuando la estructura del código fuente no sigue las reglas gramaticales del lenguaje de programación. Un ejemplo es un paréntesis o una llave sin cerrar, o una expresión mal formada.
3. **Errores semánticos:** Estos son errores lógicos que surgen cuando el significado del código es incorrecto o inconsistente con las reglas del lenguaje. Por ejemplo, intentar sumar una cadena de texto con un número, o llamar a una función con un número incorrecto de parámetros.
4. **Errores de tiempo de enlace (linking errors):** Ocurren cuando el enlazador no puede encontrar las definiciones de funciones o variables externas referenciadas en el programa.
5. **Errores de tiempo de ejecución:** Son aquellos que ocurren durante la ejecución del programa, como un acceso a una memoria no válida o una división por cero.
