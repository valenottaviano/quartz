# Análisis Léxico de un compilador

%%
Date:: [[2024-09-16]]
Course:: [[Compiladores y Trasladores]]
Source:: [[Estructura de un compilador]]
%%


El **análisis léxico** es la primera fase en el proceso de compilación de un programa. Durante esta fase, el compilador lee el código fuente del programa de izquierda a derecha, caracter por caracter, con el fin de agrupar estos caracteres en **unidades con significado propio**, conocidas como **componentes léxicos** o **tokens**.

### Funciones principales del análisis léxico:

1. **Identificación de tokens**: El analizador léxico transforma la cadena de entrada en una secuencia de tokens que serán utilizados por las fases posteriores del compilador, como el análisis sintáctico y semántico.
2. **Eliminación de comentarios y espacios**: Durante este proceso, se eliminan elementos como los comentarios del código y los espacios en blanco, que no aportan valor a la construcción del programa.
3. **Interacción con el análisis sintáctico**: El análisis léxico trabaja en conjunto con el análisis sintáctico. Cada vez que el analizador sintáctico necesita un nuevo token, solicita al analizador léxico que lo proporcione.
4. **Apoyo a la tabla de símbolos**: Los tokens identificados se almacenan en una tabla de símbolos, una estructura clave en el compilador que facilita el seguimiento de las variables, constantes y otros elementos del programa.

![[Pasted image 20240916153758.png]]
### **Componentes léxicos (tokens)**

Un **token** es una representación interna de un componente léxico que consta de dos partes:

1. **Identificador del componente léxico**: Un valor numérico que distingue un componente léxico de otro, como un operador aritmético, un identificador, una constante, etc. ![[Pasted image 20240916154431.png]]
2. **Apuntador a la tabla de símbolos**: Un enlace a la ubicación en la tabla de símbolos donde se ha almacenado la cadena de caracteres correspondiente al token. ![[Pasted image 20240916154453.png]]

### **Patrones y lexemas**

- Un **lexema** es una secuencia de caracteres en el código fuente que coincide con el **patrón** asociado a un determinado componente léxico.
- Un **patrón** es una regla que define qué secuencias de caracteres pueden representar a un componente léxico. Por ejemplo, el patrón para los operadores relacionales incluye las cadenas "<", ">", "<=", ">=", etc.

![[Pasted image 20240916154624.png]]
