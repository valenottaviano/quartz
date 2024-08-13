# Introducción a Compiladores y Trasladores

%%
Date:: [[2024-08-12]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%

- Los lenguajes de programación están altamente vinculados con [[La Gramática]]
	- Por las reglas de validación
	- Nos permite saber qué símbolos son válidas y que pertenezcan al lenguaje de programación
	- Cuando tengo que compilar un programa, tengo que analizar las líneas de texto y saber si son válidas o no.
	- Los compiladores nos permite descomponer una serie de textos en un análisis sintáctico para saber si un lenguaje es válido o no (en árbol de sintáxis)


- [[Automatas Finitos]]
	- Modelos matemáticos que reconocen lenguajes regulares
	- Tienen un conjunto finito de estados, basándose siempre en el valor de entrada.

- Fases de un compilador
	- Análisis léxico [[Automatas Finitos]]
	- Análisis sintáctico [[Autómatas con pilas]]
	- Análisis semántico