# Backus-Naur Form

%%
Date:: [[2024-09-02]]
Course:: [[Compiladores y Trasladores]]
Source:: [[Estructura de un compilador]]
%%

La notación BNF (Backus-Naur Form) es una forma de especificar la sintaxis de un lenguaje de programación o cualquier otro lenguaje formal. Fue desarrollada por John Backus y Peter Naur para definir la sintaxis del lenguaje ALGOL en los años 60, y desde entonces se ha convertido en un estándar ampliamente utilizado para describir la gramática de lenguajes de programación.

### Elementos de la Notación BNF

La notación BNF utiliza una serie de reglas o producciones para definir cómo se estructuran las cadenas de símbolos en un lenguaje. Cada regla tiene la forma de una producción, que describe cómo un símbolo no terminal puede ser reemplazado por una secuencia de símbolos terminales y no terminales.

#### Componentes Principales de la BNF:

1. **Símbolos Terminales**:
   - Son los elementos más básicos del lenguaje, que no pueden descomponerse más. En el contexto de un lenguaje de programación, los terminales suelen ser palabras clave, operadores, identificadores o caracteres individuales.
   - Ejemplo: `if`, `+`, `(`, `x`, `y`.

2. **Símbolos No Terminales**:
   - Representan categorías o componentes sintácticos que pueden descomponerse en otros símbolos terminales o no terminales. Los no terminales se usan para definir estructuras sintácticas más complejas.
   - Ejemplo: `<expresión>`, `<declaración>`, `<bloque>`.

3. **Producciones o Reglas**:
   - Definen cómo un símbolo no terminal puede ser reemplazado por una secuencia de terminales y/o no terminales. Se expresan con la forma: 
     ```
     <no_terminal> ::= secuencia de símbolos
     ```
   - El símbolo `::=` se lee como "se define como".

4. **Alternativa**:
   - Se puede usar el símbolo `|` para indicar alternativas en la definición de una regla. Esto significa que el símbolo no terminal puede ser reemplazado por cualquiera de las secuencias de símbolos especificadas.
   - Ejemplo: 
     ```
     <operador> ::= + | - | * | /
     ```

#### Ejemplo de Gramática en BNF

Supongamos que queremos definir una gramática simple para expresiones aritméticas con sumas y multiplicaciones. La BNF podría verse así:

```bnf
<expresión> ::= <término> | <expresión> + <término>
<término>   ::= <factor> | <término> * <factor>
<factor>    ::= <número> | ( <expresión> )
<número>    ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
```

En esta gramática:

- `<expresión>` es un símbolo no terminal que representa una expresión completa.
- `<término>` es un símbolo no terminal que representa un término de la expresión, que podría ser un factor solo o un producto de factores.
- `<factor>` es un símbolo no terminal que representa un número o una subexpresión entre paréntesis.
- `<número>` es un símbolo no terminal que representa un dígito.

Esta gramática permite generar expresiones como `3 + 5 * 2` o `(7 + 8) * 3`.

### Uso de la Notación BNF

La notación BNF es fundamental para definir de manera precisa y formal las reglas sintácticas de un lenguaje de programación. Los compiladores y analizadores sintácticos utilizan estas reglas para validar y procesar el código fuente, asegurando que esté correctamente estructurado antes de su ejecución o compilación.

BNF es esencial en la construcción de parsers (analizadores sintácticos), que son programas que leen el código fuente y lo convierten en estructuras de datos que representan su significado, como árboles sintácticos.

