# Syntax Diagrams

%%
Date:: [[2024-09-02]]
Course:: [[Compiladores y Trasladores]]
Source:: [[Estructura de un compilador]]
%%

### Diagramas de Sintaxis

Los diagramas de sintaxis, también conocidos como diagramas de flujo sintáctico o diagramas de Railroad, son una representación visual de las reglas gramaticales de un lenguaje, similar a la notación BNF. Estos diagramas permiten visualizar cómo se pueden combinar los diferentes elementos de un lenguaje para formar construcciones válidas.

Cada elemento en un diagrama de sintaxis se representa como un camino que puede seguirse para formar una construcción válida del lenguaje. Los diagramas de sintaxis son especialmente útiles para entender la estructura y las posibilidades de una gramática de manera intuitiva.

#### Componentes de un Diagrama de Sintaxis

1. **Óvalos o Círculos**: Representan símbolos terminales, que son los elementos básicos del lenguaje (palabras clave, operadores, etc.).
2. **Rectángulos**: Representan símbolos no terminales, que son subestructuras más complejas que se pueden expandir en otras secuencias de símbolos.
3. **Flechas**: Indican la dirección del flujo o la secuencia en que los elementos deben ser procesados.
4. **Ramas**: Muestran alternativas; puedes seguir una rama u otra dependiendo de la construcción que se esté formando.

#### Ejemplo de Diagrama de Sintaxis en ASCII

A continuación, se muestra un diagrama de sintaxis en formato ASCII para una regla gramatical que define una expresión aritmética simple de la forma `<expresión> ::= <número> + <número>`.

```
    +--------------------+
    |   <expresión>       |
    +--------------------+
            |
            v
    +--------------------+
    |      <número>       |
    +--------------------+
            |
            v
    +------>(+)------------+
    |                      |
    |  +-----------------+ |
    +-->  <número>       | |
       +-----------------+ |
```

#### Explicación del Diagrama

- **<expresión>**: Es el nodo de inicio. Desde aquí, se puede seguir una única dirección hacia un `<número>`.
- **<número>**: Después del primer número, el flujo continúa hacia el símbolo `+`, lo que indica que la operación de adición es parte de la regla.
- Después del símbolo `+`, el flujo sigue hacia otro `<número>`, completando la definición de la expresión aritmética.

#### Ejemplo Más Complejo

Vamos a representar un diagrama de sintaxis en ASCII para una expresión más compleja que incluye multiplicación y adición:

```ascii
    +--------------------+
    |    <expresión>      |
    +--------------------+
            |
            v
    +--------------------+
    |      <término>      |
    +--------------------+
       |           |
       |           v
       |   +------>(+)------------+
       |   |                      |
       |   |  +-----------------+ |
       |   +-->  <término>      | |
       |      +-----------------+ |
       |
       v
    +--------------------+
    |      <factor>       |
    +--------------------+
       |           |
       |           v
       |   +------>(*)------------+
       |   |                      |
       |   |  +-----------------+ |
       |   +-->  <factor>       | |
       |      +-----------------+ |
```

#### Explicación del Diagrama Complejo

- **<expresión>**: Comienza con un `<término>`.
- **<término>**: Puede seguir dos caminos: puede ser solo un `<factor>` o un `<término>` seguido de un `*` y otro `<factor>`.
- factor: Similar al término, pero en este caso para multiplicación.

Este tipo de diagramas ayuda a visualizar las posibles combinaciones de términos, factores, operadores, y cómo se conectan entre sí en la gramática del lenguaje.

