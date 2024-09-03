# Esquemas canónicos de un compilador

%%
Date:: [[2024-09-02]]
Course:: [[Compiladores y Trasladores]]
Source:: [[Estructura de un compilador]]
%%

Los esquemas canónicos en el análisis semántico de un compilador son métodos estructurados y predefinidos que permiten asociar atributos semánticos con las producciones gramaticales de un lenguaje de programación. Estos esquemas ayudan a realizar tareas esenciales durante la compilación, como la verificación de tipos, la construcción de tablas de símbolos, y la generación de código intermedio.

### Atributos Sintácticos

Antes de profundizar en los esquemas canónicos, es importante entender los dos tipos principales de atributos sintácticos:

1. **Atributos Sintetizados**:
   - Estos atributos se calculan a partir de los valores de los hijos en el árbol sintáctico. Por ejemplo, el valor de una expresión puede ser sintetizado sumando los valores de sus términos hijos.
   - Son los más comunes y se asocian con producciones en las que la información fluye de los nodos hijos hacia el nodo padre.

2. **Atributos Heredados**:
   - Estos atributos se pasan desde el nodo padre hacia los hijos o entre nodos hermanos. Se utilizan para propagar información contextual, como el tipo de una variable en un ámbito particular.
   - Son más complejos de manejar porque la información debe ser transmitida de manera adecuada entre diferentes niveles y ramas del árbol sintáctico.

### Esquemas Canónicos

Un esquema canónico es un conjunto de reglas o plantillas que definen cómo se deben manejar los atributos semánticos en una gramática. Estos esquemas proporcionan una base estructurada para construir y manipular atributos durante el análisis semántico.

#### Tipos de Esquemas Canónicos

1. **Esquemas S-atribuidos (Sintetizados)**:
   - Un esquema S-attribuido es uno en el que todos los atributos semánticos son sintetizados. En otras palabras, los atributos de un nodo en el árbol sintáctico se derivan únicamente de los atributos de sus nodos hijos.
   - **Ventajas**:
     - Simplicidad en su implementación.
     - Pueden ser evaluados en una sola pasada desde las hojas hacia la raíz (evaluación ascendente).
   - **Desventajas**:
     - Limitaciones en la propagación de información contextual, ya que no pueden usar atributos heredados.
   - **Ejemplo**:
     ```bnf
     <expresión> ::= <término> + <término>
         { <expresión>.val = <término1>.val + <término2>.val; }
     ```
     Aquí, el valor de `<expresión>` se sintetiza a partir de los valores de los términos hijos.

2. **Esquemas L-atribuidos (Left-attributed)**:
   - Un esquema L-attribuido permite tanto atributos sintetizados como heredados, pero con la restricción de que los atributos heredados de un nodo solo pueden depender de los atributos del nodo padre, de los hermanos a la izquierda en la producción, y de los atributos heredados del propio nodo.
   - **Ventajas**:
     - Más flexibilidad en comparación con los esquemas S-atribuidos.
     - Puede manejar gramáticas más complejas, como las que requieren verificación de tipos o manejo de ámbito.
   - **Desventajas**:
     - Más complejos de implementar, ya que requieren una evaluación ordenada y cuidadosa de los atributos.
   - **Ejemplo**:
     ```bnf
     <declaración> ::= <tipo> <identificador>
         { <identificador>.tipo = <tipo>.val; }
     ```
     Aquí, el tipo de `<identificador>` se hereda de `<tipo>`, que está a la izquierda en la producción.

### Evaluación de Atributos en Esquemas Canónicos

La evaluación de atributos en un esquema canónico depende del tipo de atributo y del orden en el que se deben procesar los nodos del árbol sintáctico:

- **Evaluación Ascendente (Bottom-Up)**: En esquemas S-atribuidos, la evaluación comienza desde las hojas del árbol sintáctico y progresa hacia la raíz. Esto asegura que todos los atributos de los nodos hijos estén disponibles antes de calcular el atributo del nodo padre.

- **Evaluación Ordenada (Top-Down)**: En esquemas L-atribuidos, la evaluación puede requerir tanto un recorrido de arriba hacia abajo (para evaluar atributos heredados) como un recorrido de abajo hacia arriba (para atributos sintetizados). Se debe seguir un orden específico para asegurar que todos los atributos necesarios estén disponibles cuando se necesiten.

### Ejemplo Práctico

Consideremos un lenguaje simple con declaraciones de variables y operaciones aritméticas. A continuación se muestra un esquema L-attribuido para manejar la verificación de tipos y la evaluación de expresiones:

```bnf
<declaración> ::= <tipo> <identificador>
    { <identificador>.tipo = <tipo>.val; }

<tipo> ::= int
    { <tipo>.val = "int"; }

<expresión> ::= <expresión> + <término>
    { <expresión>.val = <expresión1>.val + <término>.val;
      if (<expresión1>.tipo != <término>.tipo) {
          error("Tipos incompatibles en la suma");
      }
    }
```

- **<declaración>**: Se utiliza un atributo heredado para pasar el tipo desde `<tipo>` hacia `<identificador>`.
- **<expresión>**: Se sintetizan los valores de la expresión, y se verifica que los tipos de los operandos sean compatibles para la operación.

