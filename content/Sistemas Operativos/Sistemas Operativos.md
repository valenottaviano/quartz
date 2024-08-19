# Sistemas Operativos

%%
Date:: [[2024-08-16]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

## Introducción a la materia

### ¿Por qué existen los sistemas operativos?

- Una PC sin sistema operativo no puede realizar ninguna tarea significativa.
- Los sistemas operativos permiten que el usuario interactúe con una computadora de manera efectiva.
  
### Conceptos Básicos

- **Computadora Digital:**
  - Máquina secuencial que resuelve problemas ejecutando instrucciones.
  
- **Programa:**
  - Secuencia de instrucciones que describe cómo realizar una tarea específica.
  - Los componentes electrónicos de una computadora pueden ejecutar operaciones aritméticas simples.
  - Antes de ejecutar un programa, este debe convertirse en una secuencia de instrucciones simples o básicas.

### Lenguaje de Máquina

- Conjunto de instrucciones primitivas que una computadora puede ejecutar directamente.
- Es el lenguaje más básico con el que podemos comunicarnos con una computadora.
- Las instrucciones son muy simples y están diseñadas específicamente para la arquitectura de la máquina, lo que las hace difíciles y tediosas de utilizar directamente.

### Lenguajes de Programación

#### Lenguajes Compilados

- **Proceso:** El código fuente se traduce completamente a código máquina (binario) mediante un compilador antes de ejecutarse.
- **Ejemplos:** C, C++, Rust.
- **Ventajas:** 
  - Mayor velocidad de ejecución porque el código ya está traducido a un formato que la máquina entiende directamente.
  - Mayor eficiencia en el uso de recursos.
- **Desventajas:** 
  - El proceso de compilación puede ser lento.
  - Requiere recompilar el programa cada vez que se realizan cambios en el código.

#### Lenguajes Interpretados

- **Proceso:** El código fuente se ejecuta línea por línea en tiempo real mediante un intérprete, sin necesidad de ser compilado previamente.
- **Ejemplos:** Python, JavaScript, Ruby.
- **Ventajas:** 
  - Mayor flexibilidad y facilidad durante el desarrollo, permitiendo la ejecución inmediata de cambios.
- **Desventajas:** 
  - Generalmente más lentos en tiempo de ejecución debido a la necesidad de interpretar el código cada vez que se ejecuta.
  - Mayor sobrecarga en comparación con los lenguajes compilados.

## Máquina Virtual

### Definición

- Una máquina virtual es una computadora hipotética, que simula la operación de una computadora física.
- Los procesadores pueden escribir programas en diferentes niveles de lenguaje (L1, L2, L3) y hacer que la computadora los ejecute directamente.

### Lenguajes de Nivel L1, L2 y L3

- **L1 (Lenguaje de Máquina):** Es el lenguaje más bajo, directamente interpretable por la máquina física. Especifica instrucciones en términos de las operaciones fundamentales que la máquina puede realizar.
  
- **L2 (Lenguaje Ensamblador):** Un nivel por encima de L1, utiliza símbolos y nombres más legibles para los humanos, pero sigue siendo muy cercano al hardware.

- **L3 (Lenguaje de Alto Nivel):** Lenguajes como C, Python, o Java, que son más abstractos y fáciles de usar. Estos lenguajes requieren traducción (compilación o interpretación) para ser ejecutados por la máquina.

### Máquina Multinivel

- En una máquina multinivel, se crea una jerarquía de lenguajes, cada uno más conveniente que el anterior.
- El lenguaje de un nivel usa el lenguaje del nivel anterior como base para su implementación.
- Este proceso puede continuar indefinidamente hasta encontrar el lenguaje adecuado para la tarea.
- Los lenguajes escritos en L2, L3, Ln siempre deberán ser interpretados por el lenguaje de un nivel inferior.
- Nivel 0 es el hardware, el nivel más bajo
	- Los circuitos ejecutan programas escritos en el lenguaje de la máquina del nivel 1.
	- Los circuits ejecutan programas escritos en el lenguaje de la máquina del nivel 1.
	- Debajo del 0, transistores como parte elemental.
- En la actualidad, las máquinas siguen siendo de multinivel 

### Máquinas multiniveles actuales 

- **Nivel 0 - Lógica digital**
	- El nivel más básico
	- Es el hardware de la máquina.
		- Compuertas digitales, CI, circuitos combinacionales, circuitos aritméticos
- **Nivel 1 - Nivel de microprogramación**
	- Conforma el verdadero lenguaje de máquina
	- Existe un programa llamado *microprograma*
		- Está corriendo en el nivel de microprogramación, e interpreta las instrucciones del nivel 2
		- Es el firmware 
- **Nivel 2 - Maquina convencional**
	- Cada microprograma define un lenguaje de nivel 2
		- Las instrucciones del nivel de máquina las interpreta el microprograma
	- En máquinas donde no existe el nivel de microprogramación, las instrucciones se realizan directamente sobre la electrónica.
- **Nivel 3 - Máquina del sistema operativo**
	- La mayoría de las instrucciones de este nivel están también en el nivel 2 para además tiene
		- Un nuevo conjunto de instrucciones
		- Una organización diferente de la memoria
		- Posibilidad de ejecutar dos o más programas en paralelo
	- Las nuevas instrucciones se interpretan en el sistema operativo
	- Nivel híbrido 
		- Algunas instrucciones de nivel 3 las interpreta el sistema operativo y otras directamente el programa
- **Nivel 4 - Nivel del lenguaje ensamblador**
	- Los niveles 4 y superiores están pensados para los programadores de aplicaciones
	- El método por el que se soportan los niveles superiores
		- Los niveles 2 y 3 siempre se interpretan
		- Los niveles 4 y 5 soportan compilación


