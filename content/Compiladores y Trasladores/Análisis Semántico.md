# Análisis Semántico

%%
Date:: [[2024-09-20]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%


El **análisis semántico** es una fase crítica en el proceso de compilación que sigue al análisis sintáctico. Su objetivo principal es verificar que las sentencias y expresiones del programa tengan **significado lógico y coherente** de acuerdo con las reglas del lenguaje de programación. Mientras que el análisis sintáctico asegura que las frases estén correctamente estructuradas, el análisis semántico se asegura de que las operaciones realizadas sobre los datos sean válidas y consistentes.

---

## Funciones del Análisis Semántico

El análisis semántico se encarga de varias tareas clave en la compilación:

1. **Verificación de Tipos**: Se asegura de que los tipos de datos usados en las operaciones sean compatibles. Por ejemplo, verificar que una variable de tipo entero no sea asignada a una cadena de texto.
   
2. **Chequeo de Alcance**: Verifica que las variables y funciones utilizadas hayan sido declaradas previamente y estén dentro del ámbito (scope) adecuado.

3. **Compatibilidad de Argumentos**: Asegura que las funciones sean llamadas con el número y tipo correctos de argumentos, según su definición.

4. **Conversión de Tipos**: En algunos casos, es necesario convertir los tipos de datos para que las operaciones sean válidas. El análisis semántico se asegura de que estas conversiones sean correctas y seguras.

5. **Manejo de Errores Semánticos**: Si hay errores de tipo semántico, como una operación inválida o una variable no definida, el compilador genera advertencias o errores.

### Ejemplo:

Si en un programa C se declara:
```c
int x;
x = "hola";
```
El análisis semántico detectaría un error porque se está intentando asignar una cadena de caracteres a una variable de tipo entero.

---

## Tabla de Símbolos

Durante el análisis semántico, se utiliza una **tabla de símbolos**, que es una estructura de datos que almacena información sobre los identificadores del programa (variables, funciones, etc.). Para cada identificador, la tabla de símbolos guarda:

- El **tipo de dato** asociado (entero, flotante, cadena, etc.).
- El **ámbito** en el que fue declarado.
- Información adicional como el método de paso de parámetros o el tipo de retorno de una función.

La tabla de símbolos es utilizada tanto por el analizador léxico, sintáctico y semántico, y se actualiza conforme se procesan las declaraciones y definiciones.

---

## Tipos de Errores Semánticos

### 1. **Errores de Tipo**:
   - Ocurren cuando se intenta realizar operaciones entre tipos incompatibles.
   - Ejemplo: sumar un entero con una cadena de texto.
### 2. **Uso de Variables No Declaradas**:
   - Ocurre cuando se utiliza una variable que no ha sido previamente declarada en el programa.
### 3. **Incompatibilidad de Argumentos**:
   - Se produce cuando una función es llamada con el número incorrecto de parámetros o con tipos de datos incompatibles.
### 4. **Asignaciones Inválidas**:
   - Se detectan cuando se asigna un valor a una variable que no coincide con su tipo de dato.
### 5. **Control de Flujo Incoherente**:
   - Ocurre cuando las sentencias de control como `if` o `while` contienen condiciones que no son válidas o no tienen sentido en el contexto.

---

## Ejemplo de Proceso de Análisis Semántico

Considera el siguiente fragmento de código en C:
```c
int suma(int a, int b) {
    return a + b;
}

int main() {
    int resultado;
    resultado = suma(5, "diez");
}
```

Durante el análisis semántico, el compilador detecta que se está pasando una cadena de texto ("diez") a la función `suma`, que espera dos enteros. Esto generará un error de **incompatibilidad de tipos**.

---

## Representación Intermedia

Una vez finalizado el análisis semántico, se puede generar una **representación intermedia** del programa que sea más fácil de optimizar y de convertir en código máquina. Esta representación se basa en el **árbol sintáctico** construido durante el análisis sintáctico, pero ahora incluye información semántica, como los tipos de datos y las conversiones necesarias entre ellos.

---


![[Esquemas canónicos y de traducción]]


