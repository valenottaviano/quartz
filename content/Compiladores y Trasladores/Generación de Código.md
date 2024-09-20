# Generación de Código

%%
Date:: [[2024-09-20]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%


La **generación de código** es una de las fases finales de un compilador. En esta etapa, el compilador toma como entrada una representación intermedia del programa (generalmente derivada del análisis semántico) y la transforma en código de bajo nivel, ya sea **código máquina** o **código intermedio** específico de una máquina virtual. El objetivo principal de esta fase es generar un código que sea **correcto** y **eficiente**.

---

## Fases de la Generación de Código

La generación de código puede dividirse en varias subfases:

### 1. **Generación de Código Intermedio**
El **código intermedio** es una representación más cercana al código máquina que el código fuente, pero todavía independiente de la plataforma específica. Se utiliza porque permite aplicar técnicas de optimización antes de generar el código final.

#### Ejemplo de Código Intermedio:
El código intermedio a menudo se representa en forma de instrucciones de **tres direcciones**. Por ejemplo, la expresión:
```c
a = b + c * d;
```
se traduciría a:
```
t1 = c * d
t2 = b + t1
a = t2
```
Donde `t1` y `t2` son **variables temporales** generadas por el compilador.

### 2. **Asignación de Registros**
Una vez que se ha generado el código intermedio, el compilador debe decidir qué variables y valores temporales se almacenan en **registros** (espacios de almacenamiento en el procesador). La **asignación de registros** es un paso importante para mejorar la eficiencia del código generado.

### 3. **Generación de Código Máquina o Ensamblador**
La fase final de la generación de código implica traducir el código intermedio en **instrucciones máquina** o **código ensamblador**. Cada instrucción de alto nivel se convierte en una o varias instrucciones de bajo nivel que el procesador pueda ejecutar.

#### Ejemplo de Traducción a Código Máquina:
Supongamos que la instrucción intermedia es:
```
t1 = c * d
```
En código ensamblador, esto podría traducirse a:
```asm
MOV R1, c    ; Mover el valor de 'c' al registro R1
MOV R2, d    ; Mover el valor de 'd' al registro R2
MUL R1, R2   ; Multiplicar R1 por R2 y almacenar el resultado en R1
MOV t1, R1   ; Mover el resultado al temporal t1
```

### 4. **Optimización de Código**
En este punto, se pueden aplicar **optimizaciones** para mejorar el rendimiento del código generado, tanto en términos de tiempo de ejecución como de uso de memoria. Algunas de las optimizaciones comunes son:
- **Eliminación de subexpresiones comunes**: Evita recalcular una misma expresión varias veces.
- **Propagación de constantes**: Reemplaza variables por sus valores si estos son conocidos en tiempo de compilación.
- **Optimización de bucles**: Mejora el rendimiento de bucles que se ejecutan repetidamente.

### 5. **Enlazado y Generación del Programa Final**
En la fase de **enlazado**, los diferentes módulos o archivos de código objeto se combinan para generar un **programa ejecutable**. Durante este proceso, el enlazador resuelve referencias a funciones o variables que se encuentran en otros módulos y agrega las bibliotecas necesarias.

---

## Código de Tres Direcciones

El **código de tres direcciones** es una representación intermedia comúnmente utilizada en la generación de código. Se llama así porque cada instrucción en este formato tiene a lo sumo tres operandos: dos fuentes y un destino.

### Ejemplo:
Para la expresión `a + b * c`, el código de tres direcciones sería:
```
t1 = b * c
t2 = a + t1
```
En este caso, `t1` y `t2` son variables temporales.

### Ventajas del Código de Tres Direcciones:
- Facilita la aplicación de optimizaciones.
- Es más cercano al código máquina y más fácil de traducir en la fase final del compilador.
- Permite la reutilización eficiente de registros.

---

## Optimización en la Generación de Código

La **optimización de código** es crucial para mejorar el rendimiento del programa final. Hay dos tipos principales de optimización:

1. **Optimización a Nivel Local**: Se enfoca en bloques pequeños de código, como funciones o procedimientos. Por ejemplo, eliminar cálculos redundantes o reducir el número de instrucciones en un bucle.
   
2. **Optimización a Nivel Global**: Abarca todo el programa o módulos completos. Un ejemplo sería la **propagación de constantes** entre diferentes funciones o la **eliminación de código muerto**.

### Ejemplo de Optimización:
Si en el código intermedio tenemos:
```
t1 = a + b
t2 = a + b
```
El compilador puede optimizar esto eliminando la redundancia:
```
t1 = a + b
t2 = t1
```


