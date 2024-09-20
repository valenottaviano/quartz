# Análisis Sintáctico

%%
Date:: [[2024-09-20]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%


El **análisis sintáctico** es la segunda fase de un compilador, encargada de recibir la cadena de **tokens** generada por el análisis léxico y organizarla según una estructura jerárquica, denominada **árbol sintáctico** o **árbol de derivación**. Esta estructura sigue las reglas de la gramática formal que define el lenguaje de programación.

El objetivo principal del análisis sintáctico es verificar que el código fuente tenga una **estructura válida** de acuerdo con las reglas gramaticales del lenguaje, asegurándose de que las sentencias y expresiones están correctamente construidas.

---

## Árbol Sintáctico

El **árbol sintáctico** es una representación jerárquica de la estructura del programa. Cada nodo en el árbol representa un **componente gramatical**, como una operación o expresión, y las hojas son los **tokens** del código fuente. El árbol permite visualizar cómo las diferentes partes del programa están relacionadas entre sí.

### Ejemplo:
Para la expresión aritmética `a + b * c`, el árbol sintáctico sería:

```
      +
     / \
    a   *
       / \
      b   c
```

Este árbol refleja la precedencia de las operaciones, donde la multiplicación tiene mayor prioridad que la suma.

---

## Gramáticas Libres de Contexto (CFG)

El análisis sintáctico se basa en **gramáticas libres de contexto** (CFG, por sus siglas en inglés), un conjunto de reglas que describe cómo las expresiones y sentencias del lenguaje deben estructurarse. Una CFG está compuesta por:

- **Terminales**: Los tokens del lenguaje, como `+`, `if`, `else`, etc.
- **No terminales**: Categorías abstractas que agrupan varias formas de producción, como `<expresión>`, `<declaración>`, etc.
- **Reglas de producción**: Definen cómo se pueden formar las secuencias de terminales y no terminales.
- **Símbolo inicial**: El punto de inicio para la construcción del árbol sintáctico.

### Ejemplo de una regla de producción:

```
<expresión> ::= <expresión> + <término> | <término>
<término> ::= <término> * <factor> | <factor>
<factor> ::= ( <expresión> ) | id | num
```

Estas reglas permiten definir la estructura de las expresiones aritméticas.

---

## Tipos de Analizadores Sintácticos

Existen dos tipos principales de analizadores sintácticos, basados en la forma en que procesan el código fuente:

1. **Análisis Ascendente (Bottom-Up)**: Construyen el árbol sintáctico desde las hojas (tokens) hacia la raíz. Un ejemplo común es el **parser LR**.
2. **Análisis Descendente (Top-Down)**: Comienzan en la raíz y descienden hacia las hojas, tratando de derivar los tokens a partir de las reglas gramaticales. Un ejemplo de este enfoque es el **parser recursivo-descendente**.

---

## Errores Sintácticos

Un error sintáctico ocurre cuando la secuencia de tokens no sigue las reglas de la gramática. El analizador sintáctico debe **detectar** estos errores y, en algunos casos, **recuperarse** de ellos para seguir procesando el código.

### Ejemplo de error sintáctico:
```c
if (x < y) {
    z = x +;
}
```
En este caso, el símbolo `+` no está seguido por un operando, lo que genera un error.

---

## Fases del Análisis Sintáctico

1. **Lectura de Tokens**: El analizador recibe los tokens generados por el análisis léxico y los organiza en una estructura jerárquica.
2. **Construcción del Árbol**: Se genera un árbol que representa la estructura gramatical del programa.
3. **Manejo de Errores**: Se detectan errores en la secuencia de tokens y se intenta corregir o informar los problemas.
4. **Preparación para el Análisis Semántico**: Se pasa el árbol sintáctico al siguiente paso, el análisis semántico, donde se validan los tipos de datos y las operaciones.

---
