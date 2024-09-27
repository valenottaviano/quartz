# Algoritmo de Thompson y construcción de Subconjuntos

%%
Date:: [[2024-09-23]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%

El **Algoritmo de Thompson** es un método utilizado para construir un **Automata Finito No Determinista (AFN)** a partir de una Expresión Regular (ER). Este autómata no determinista es capaz de reconocer el mismo lenguaje que la expresión regular. La finalidad es construir un **Automata Finito Determinista (AFD)** a través de la técnica de construcción de subconjuntos, optimizando así el reconocimiento del lenguaje.

### Método de Thompson

El algoritmo de Thompson se basa en descomponer una expresión regular en subexpresiones más simples hasta llegar a los símbolos individuales. A partir de estos símbolos, se construyen los sub-autómatas que luego son integrados en el AFN que reconoce el lenguaje de la expresión regular.
- Se centra específicamante en el [[Análisis Léxico]].
	- Nos permite consumir toda una cadena de entrada y si llegamos al estado final, reconocer si el lexema es aceptado o no.
	
![[Pasted image 20240923152509.png]]

Las **reglas básicas** del método de Thompson son:

1. **Para un símbolo individual**: Se construye un AFN que solo tiene un estado inicial y uno final.![[Pasted image 20240923152627.png]]
2. **Para la concatenación** de dos subexpresiones: Se enlazan los autómatas correspondientes a cada subexpresión. ![[Pasted image 20240923152651.png]]
3. **Para la unión (|)**: Se crea un nuevo estado inicial y final, conectando estos a los autómatas de las subexpresiones con transiciones vacías (ε). ![[Pasted image 20240923152703.png]]![[Pasted image 20240923152721.png]]![[Pasted image 20240923152738.png]]![[Pasted image 20240923152800.png]]

![[Pasted image 20240923152844.png]]
![[Pasted image 20240923153409.png]]
### Construcción de Subconjuntos

La **construcción de subconjuntos** es un método que transforma un AFN en un AFD, necesario para que el autómata pueda ser más eficiente en el reconocimiento de patrones. Esta técnica consiste en agrupar los estados del AFN que se pueden alcanzar mediante transiciones vacías (ε), y etiquetar estos grupos como nuevos estados del AFD.

#### Proceso:

1. **Cerradura ε**: Se encuentra el conjunto de todos los estados que se pueden alcanzar desde un estado mediante transiciones vacías.
2. **Construcción de la tabla de transiciones**: Se elabora una tabla donde se muestran las transiciones desde un conjunto de estados a otro bajo un símbolo de entrada.
3. **Etiquetado de estados**: Cada conjunto de estados que se genera se etiqueta con una letra (A, B, C, etc.) y estos representan los nuevos estados del AFD.
4. **Optimización del AFD**: Finalmente, el AFD se puede optimizar eliminando estados redundantes.

Este proceso de transformación permite que el autómata no determinista inicial, que podía tener múltiples caminos para una misma entrada, sea convertido en un AFD capaz de procesar la entrada de manera única y eficiente


