# Lenguajes formales y gramáticas

%%
Date:: [[2024-09-20]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%

## Introducción a los Lenguajes Formales

Un **lenguaje formal** es un conjunto de cadenas de símbolos que se generan a partir de un alfabeto. Estos lenguajes son fundamentales en el estudio de la **teoría de la computación** y juegan un papel crucial en el diseño de lenguajes de programación.

### Componentes de un Lenguaje Formal:
- **Alfabeto**: Conjunto finito de símbolos.
- **Cadenas**: Secuencias de símbolos del alfabeto.
- **Lenguaje**: Conjunto de cadenas generadas a partir del alfabeto.

Por ejemplo, el alfabeto binario {0, 1} genera cadenas como 0, 1, 00, 11, 010, etc. El conjunto de todas las posibles cadenas que se pueden formar con {0, 1} es un lenguaje formal.

---

## Gramáticas Formales

Una **gramática formal** es un conjunto de reglas que define cómo se pueden construir cadenas válidas en un lenguaje. Las gramáticas son esenciales para especificar la sintaxis de los lenguajes de programación.

### Definición de Gramática Formal

Una gramática formal G se define como una cuádrupla:
$$
G = \{ \Sigma_T, \Sigma_{NT}, P, S \}
$$
donde:
- **$\Sigma_T$**: Conjunto de símbolos **terminales**, los elementos básicos del lenguaje (palabras clave, operadores, etc.).
- **$\Sigma_{NT}$**: Conjunto de símbolos **no terminales**, que representan categorías gramaticales.
- **P**: Conjunto de **reglas de producción**, que definen cómo los símbolos no terminales pueden ser reemplazados por secuencias de símbolos terminales y no terminales.
- **S**: **Símbolo inicial**, que es el símbolo no terminal desde el cual se empieza a generar el lenguaje.

### Ejemplo:
Considera la siguiente gramática:
$$
G = \{ \Sigma_T = \{ a, b \}, \Sigma_{NT} = \{ S \}, P = \{ S \rightarrow aSb, S \rightarrow \varepsilon \}, S = S \}
$$
Esta gramática genera cadenas con la misma cantidad de "a" y "b", por ejemplo: "", "ab", "aabb", "aaabbb", etc.

---

## Jerarquía de Chomsky

La **Jerarquía de Chomsky** clasifica las gramáticas formales en cuatro tipos, según su capacidad para describir lenguajes:

1. **Gramáticas Tipo 0 (Gramáticas Recursivamente Enumerables)**:
   - La forma más general de gramáticas.
   - Pueden generar cualquier lenguaje que una **Máquina de Turing** pueda reconocer.
   - Ejemplo: Cualquier lenguaje que sea reconocible por una Máquina de Turing, incluyendo algunos problemas indecidibles.

2. **Gramáticas Tipo 1 (Gramáticas Sensibles al Contexto)**:
   - Las reglas de producción tienen la forma $\alpha A \beta \rightarrow \alpha \gamma \beta$, donde $A$ es un no terminal, y $\gamma$ no es vacío.
   - Reconocidas por **autómatas lineales acotados** (ALA).
   - Ejemplo: El lenguaje $\{ a^n b^n c^n | n \geq 0 \}$, donde el número de "a", "b" y "c" debe ser el mismo.

3. **Gramáticas Tipo 2 (Gramáticas Libres de Contexto, CFG)**:
   - Las reglas de producción tienen la forma $A \rightarrow \gamma$, donde $A$ es un no terminal y $\gamma$ es una cadena de terminales y no terminales.
   - Reconocidas por **autómatas de pila**.
   - Ejemplo: El lenguaje de las cadenas balanceadas de paréntesis, $\{ ( ) , ( ( ) ) , ( ( ( ) ) ) \}$.

4. **Gramáticas Tipo 3 (Gramáticas Regulares)**:
   - Las reglas de producción tienen la forma $A \rightarrow aB$ o $A \rightarrow a$, donde $A$ y $B$ son no terminales y $a$ es un terminal.
   - Reconocidas por **autómatas finitos**.
   - Ejemplo: Lenguajes regulares descritos por expresiones regulares, como $\{ a^n b^n | n = 1 \}$.

---

## Gramáticas Formales en Compiladores

En los compiladores, las gramáticas formales juegan un papel clave en la fase de análisis sintáctico, donde se verifica que el código fuente sigue las reglas del lenguaje de programación.

1. **Gramáticas Regulares**: Utilizadas en los **análisis léxicos** para identificar patrones como identificadores, operadores y números.
   
2. **Gramáticas Libres de Contexto (CFG)**: Se emplean en los **análisis sintácticos** para verificar la estructura del código fuente, como expresiones y declaraciones.

---

Las formas de representar la sintaxis de un lenguaje son la notación BNF y los diagramas de sintaxis:

## Notación BNF ([[Backus-Naur Form]])

La **Notación BNF** es una forma de describir la sintaxis de los lenguajes formales mediante reglas de producción. Es ampliamente utilizada para definir la sintaxis de los lenguajes de programación.

### Ejemplo de BNF para Expresiones Aritméticas:

```
<expresión> ::= <expresión> + <término> | <expresión> - <término> | <término>
<término> ::= <término> * <factor> | <término> / <factor> | <factor>
<factor> ::= ( <expresión> ) | <número>
<número> ::= <dígito>+
<dígito> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
```

Esta gramática describe expresiones aritméticas que incluyen operaciones de suma, resta, multiplicación y división.

---

## Diagramas Sintácticos [[Syntax Diagrams]]

Los **diagramas sintácticos**, también conocidos como diagramas de sintaxis o gráficos de sintaxis, son una representación visual de las reglas de una gramática. Cada diagrama muestra cómo los diferentes elementos del lenguaje se pueden combinar.
### Ejemplo:
Para una gramática que define expresiones aritméticas, un diagrama sintáctico puede representarse visualmente como un flujo que conecta las diferentes reglas de producción.


