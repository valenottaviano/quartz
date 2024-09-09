# Estructuras de datos empleadas en un compilador

%%
Date:: [[2024-09-09]]
Course:: [[Compiladores y Trasladores]]
Source:: [[Compiladores]]
%%

### 1. **Tabla de símbolos**

La **tabla de símbolos** es una estructura fundamental que se utiliza para almacenar información sobre los identificadores presentes en el código fuente, como variables, funciones, constantes y otros elementos. Se actualiza durante el análisis léxico y se consulta a lo largo de las demás fases del compilador.

**Datos almacenados en la tabla de símbolos:**

- Nombre del identificador
- Tipo de dato (int, float, char, etc.)
- Ámbito o alcance (local, global)
- Dirección de memoria (si es una variable)
- Parámetros (si es una función)
- Cualquier otra información relevante según el lenguaje de programación

Se puede implementar como un **árbol de búsqueda binario** o una **tabla hash** para hacer más eficientes las búsquedas y actualizaciones.

### 2. **Árbol sintáctico (Parse Tree)**

El **árbol sintáctico** es una representación jerárquica del código fuente que muestra cómo se estructuran las expresiones y sentencias según las reglas gramaticales del lenguaje. Se genera durante el análisis sintáctico y cada nodo del árbol representa un componente sintáctico.

- **Nodos internos:** Representan operadores, declaraciones o sentencias.
- **Hojas:** Representan valores literales, identificadores o constantes.

El árbol sintáctico permite verificar la estructura correcta del programa y facilita el análisis semántico y la generación de código.

### 3. **Árbol sintáctico abstracto (AST - Abstract Syntax Tree)**

El **árbol sintáctico abstracto (AST)** es una versión simplificada del árbol sintáctico que omite los detalles redundantes de la gramática. Se utiliza para representar la estructura lógica del programa de una manera más compacta y directa. En el AST, solo se incluyen los nodos que son esenciales para la generación de código.

Por ejemplo, en una expresión matemática como `a + (b * c)`, el AST solo incluiría los operadores y operandos, ignorando paréntesis y otros elementos de la gramática.

### 4. **Pila de operandos**

Durante la **generación de código intermedio** y la evaluación de expresiones, los compiladores a menudo utilizan una **pila de operandos** para gestionar la evaluación de expresiones aritméticas y lógicas. Los operandos y resultados intermedios de las operaciones se almacenan temporalmente en esta pila.

Esta estructura es útil en el manejo de expresiones complejas, en particular al convertir expresiones infijas a posfijas (notación polaca inversa), lo que facilita la generación del código de máquina o código intermedio.

### 5. **Tabla de tipos**

La **tabla de tipos** se utiliza para almacenar información sobre los tipos de datos en el programa, especialmente durante el análisis semántico. Permite verificar la compatibilidad de tipos en las expresiones y sentencias.

**Datos almacenados:**

- Tipos básicos: enteros, flotantes, caracteres, etc.
- Tipos definidos por el usuario: estructuras, clases, etc.
- Reglas de conversión de tipos

La tabla de tipos es clave para detectar errores semánticos, como la asignación de un valor de un tipo incorrecto a una variable.

### 6. **Tabla de constantes**

La **tabla de constantes** es una estructura que almacena todas las constantes literales (números, cadenas, etc.) que aparecen en el programa fuente. Esta estructura permite asignarles direcciones de memoria y reutilizarlas eficientemente durante la ejecución del programa.

**Datos almacenados:**

- Valor de la constante
- Tipo de la constante
- Dirección en la que se almacena en la memoria

### 7. **Código intermedio**

El **código intermedio** es una representación intermedia del programa, que está entre el código fuente y el código de máquina. A menudo se utiliza una estructura como una lista enlazada o un gráfico de flujo de control para gestionar el orden de ejecución de las instrucciones intermedias.

Las formas comunes de representación del código intermedio incluyen:

- **Código de tres direcciones:** Cada instrucción tiene un operador y hasta tres operandos. Ejemplo: `x = y + z`.
- **Grafos de flujo de control:** Representan el flujo lógico del programa, con nodos que indican bloques de código y aristas que representan saltos condicionales y secuenciales.

### 8. **Pila de llamadas (Call Stack)**

La **pila de llamadas** es utilizada para gestionar las invocaciones a funciones y procedimientos durante la ejecución de un programa. Cuando una función es llamada, se almacena en la pila un registro de activación que contiene información sobre:

- Parámetros pasados a la función
- Valores locales de la función
- Dirección de retorno para continuar la ejecución después de la llamada

Esta estructura permite gestionar el paso de parámetros, el retorno de valores y el control de flujo en las llamadas a funciones y recursiones.

### 9. **Tabla de bloques básicos**

La **tabla de bloques básicos** se utiliza para dividir el programa en secciones o bloques que se ejecutan secuencialmente sin interrupciones (como saltos condicionales o bucles). Esta estructura facilita la optimización del código intermedio y del código de máquina.